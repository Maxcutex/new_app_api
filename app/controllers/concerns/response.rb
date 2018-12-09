# frozen_string_literal: true

# module for handling custom responses
module Response
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
