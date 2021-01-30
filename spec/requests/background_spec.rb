require 'rails_helper'

describe 'Backgrounds endpoint' do
  it 'Backgrounds endpoint returns json' do
    get '/api/v1/backgrounds?location=Denver,CO'

    background = JSON.parse(response.body, symbolize_names: true)

    expect(response).to be_successful
    expect(background).to be_a(Hash)

    expect(background[:data][:id]).to be_nil
    expect(background[:data][:type]).to eq('image')
    expect(background[:data][:attributes]).to be_a(Hash)
    expect(background[:data][:attributes][:image_url]).to be_a(String)
    expect(background[:data][:attributes][:image_url]).to eq("https://images.unsplash.com/photo-1580499518184-89bd0b1b061d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxOTk0MDh8MHwxfHNlYXJjaHwxfHxEZW52ZXIsQ098ZW58MHx8fA&ixlib=rb-1.2.1&q=80&w=1080")
    expect(background[:data][:attributes][:location]).to be_a(String)
    expect(background[:data][:attributes][:location]).to eq('Denver,CO')
    expect(background[:data][:attributes][:credit]).to be_a(String)
    expect(background[:data][:attributes][:credit]).to eq("Photo by Jens Peter Olesen / Unsplash")
  end
end
