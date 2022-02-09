# inherit from ActionController::API instead of ActionController::Base
# because this is an API only application
class ApplicationController < ActionController::API
    include Response
    include ExceptionHandler
  end
