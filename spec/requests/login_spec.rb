require 'rails_helper'

describe 'Login endpoint' do
  it 'User can login' do
    User.create(email: 'garrett@whatever.com', password: 'password')

    body = {
      email: 'garrett@whatever.com',
      password: 'password'
    }

    post '/api/v1/sessions', params: body.to_json
    login = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(200)
    expect(login[:data]).to be_a(Hash)
    expect(login[:data][:id]).to be_a(String)
    expect(login[:data][:id]).to eq('1')
    expect(login[:data][:type]).to be_a(String)
    expect(login[:data][:type]).to eq('users')
    expect(login[:data][:attributes]).to be_a(Hash)
    expect(login[:data][:attributes][:email]).to be_a(String)
    expect(login[:data][:attributes][:email]).to eq('garrett@whatever.com')
    expect(login[:data][:attributes][:api_key]).to be_a(String)
  end
end
