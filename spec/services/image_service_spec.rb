require 'rails_helper'

describe 'image service' do
  it 'background method' do
    response = ImageService.background('Denver,CO')

    expect(response).to be_an(Hash)
    expect(response[:results]).to be_an(Array)
    expect(response[:results][0]).to be_a(Hash)

    expect(response[:results][0]).to have_key(:urls)
    expect(response[:results][0][:urls]).to be_a(Hash)
  end
end
