# helper file, used in requests specs
module RequestSpecHelper
    # Parse JSON response to ruby hash which will be easier for our tests
    def json
      JSON.parse(response.body)
    end
  end
