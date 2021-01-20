require 'rails_helper'

describe 'Weather' do 
  it 'has attributes' do
    data =  {:lat=>39.7385,
             :lon=>-104.9849,
             :timezone=>"America/Denver",
             :timezone_offset=>-25200,
             :current=>
            {:dt=>1611135095,
             :sunrise=>1611152195,
             :sunset=>1611187512,
             :temp=>273.09,
             :feels_like=>269.2,
             :pressure=>1023,
             :humidity=>52,
             :dew_point=>265.38,
             :timezone=>"America/Denver",
             :timezone_offset=>-25200
             }
            }

    weather = Weather.new(data)

    expect(weather.current_weather[:sunrise]).to eq(1611152195)
    expect(weather.current_weather[:sunset]).to eq(1611187512)
    expect(weather.current_weather[:pressure]).to eq(1023)
    expect(weather.current_weather[:feels_like]).to eq(269.2)
  end
end
