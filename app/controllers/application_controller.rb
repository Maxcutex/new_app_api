# frozen_string_literal: true

# application controller module
class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler
end
