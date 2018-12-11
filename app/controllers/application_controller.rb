# frozen_string_literal: true

# application controller module
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
end
