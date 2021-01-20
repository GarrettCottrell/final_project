require 'rails_helper'

describe 'Register endpoint' do
  it 'User can register' do

    body = {
      email: 'garrett@whatever.com',
      password: 'password',
      password_confirmation: 'password'
    }

    post '/api/v1/users', params: body.to_json
    register = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(201)
    expect(register[:data]).to be_a(Hash)
    expect(register[:data][:id]).to be_a(String)
    expect(register[:data][:id]).to eq('1')
    expect(register[:data][:type]).to be_a(String)
    expect(register[:data][:type]).to eq('users')
    expect(register[:data][:attributes]).to be_a(Hash)
    expect(register[:data][:attributes][:email]).to be_a(String)
    expect(register[:data][:attributes][:email]).to eq('garrett@whatever.com')
    expect(register[:data][:attributes][:api_key]).to be_a(String)
  end
end
