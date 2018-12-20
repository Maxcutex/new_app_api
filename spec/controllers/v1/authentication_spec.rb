require 'rails_helper'

RSpec.describe 'POST /api/v1/login', type: :controller do
  let(:user) { create(:user) }
  let(:url) { '/api/v1/login' }
  let(:params) do
    {
      user: {
        email: user.email,
        password: user.password
      }
    }
  end
 # let(:valid_session) {  SessionController.new  }
  context 'when params are correct' do
    before do
      sign_in(user)
    end

    it 'returns 200' do
      expect(response).to have_http_status(200)
    end

    it 'returns JTW token in authorization header' do
      
      binding.pry
      
      expect(response.headers['Authorization']).to be_present
    end

    it 'returns valid JWT token' do
      decoded_token = decoded_jwt_token_from_response(response)
      expect(decoded_token.first['sub']).to be_present
    end
  end

  context 'when login params are incorrect' do
    before { post url }
    
    it 'returns unathorized status' do
      expect(response.status).to eq 401
    end
  end
end

RSpec.describe 'DELETE /api/v1/logout', type: :controler do
  let(:url) { '/api/v1/logout' }

  it 'returns 204, no content' do
    sign_out(user)
    expect(response).to have_http_status(204)
  end
end