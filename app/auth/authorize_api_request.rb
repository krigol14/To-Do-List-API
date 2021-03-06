# class responsible for authorizing all API requests, making sure that all of them have a valid token and user credentials
# gets the token from the authorization headers, attemps to decode it to return a valid user object
class AuthorizeApiRequest
    def initialize(headers = {})
      @headers = headers
    end
  
    # Service entry point - return valid user object
    def call
      {
        user: user
      }
    end
  
    private
  
    attr_reader :headers
  
    def user
      # check if user is in the database
      # memorize user object
      @user ||= User.find(decoded_auth_token[:user_id]) if decoded_auth_token
      # handle user not found
      rescue ActiveRecord::RecordNotFound => e
      # raise custom error
      raise(
        ExceptionHandler::InvalidToken,
        ("#{Message.invalid_token} #{e.message}")
      )
    end
  
    # decode authentication token
    def decoded_auth_token
      @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
    end
  
    # check for token in `Authorization` header
    def http_auth_header
      if headers['Authorization'].present?
        return headers['Authorization'].split(' ').last
      end
        raise(ExceptionHandler::MissingToken, Message.missing_token)
    end
  end
