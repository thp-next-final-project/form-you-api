require 'rails_helper'

describe RegistrationsController, type: :request do

  let (:user) { build_user }
  let (:existing_user) { create_user }
  let (:signup_url) { '/api/signup' }

  context 'When creating a new user' do
    before do
      post signup_url, params: {
        user: {
          firstname: user.firstname,
          lastname: user.lastname,
          role: user.role,
          email: user.email,
          password: user.password
        }
      }
    end

    it 'returns 200' do
      expect(response.status).to eq(200)
    end

    it 'returns a token' do
      expect(response.headers['Authorization']).to be_present
    end

    it 'returns the user email' do
      expect(json['data']).to have_attribute(:email).with_value(user.email)
    end
    it 'returns the user role' do
      expect(json['data']).to have_attribute(:role).with_value(user.role)
    end
    it 'returns the user firstname' do
      expect(json['data']).to have_attribute(:firstname).with_value(user.firstname)
    end
    
    it 'returns the user lastname' do
      expect(json['data']).to have_attribute(:lastname).with_value(user.lastname)
    end
  end

  context 'When an email already exists' do
    before do
      post signup_url, params: {
        user: {
          email: existing_user.email,
          password: existing_user.password
        }
      }
    end

    it 'returns 400' do
      expect(response.status).to eq(400)
    end
  end

end
