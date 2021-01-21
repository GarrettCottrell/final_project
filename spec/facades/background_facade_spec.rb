require 'rails_helper'

describe 'background facade' do
  it 'create background object' do
    background = BackgroundFacade.background('Denver,CO')
   
    expect(background).to be_a(Background)
    expect(background.credit).to eq("Photo by Jens Peter Olesen / Unsplash")
    expect(background.image_url).to eq("https://images.unsplash.com/photo-1580499518184-89bd0b1b061d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MXwxOTk0MDh8MHwxfHNlYXJjaHwxfHxEZW52ZXIsQ098ZW58MHx8fA&ixlib=rb-1.2.1&q=80&w=1080")
    expect(background.location).to eq("Denver,CO")
  end
end
