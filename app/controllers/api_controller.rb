# api base controller
class ApiController < ActionController::API
  include Response
  include ExceptionHandler
end
