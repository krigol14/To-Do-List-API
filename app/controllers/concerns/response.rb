# helper file, used in todos_controller.rb
module Response
    # responds with JSON and an HTTP status code
    def json_response(object, status = :ok)
      render json: object, status: status
    end
  end
