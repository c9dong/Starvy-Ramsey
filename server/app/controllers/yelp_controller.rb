require 'yelp'

class YelpController < ApplicationController
  def initialize
    @client = Yelp::Client.new({
        consumer_key: Settings.yelp_consumer_key,
        consumer_secret: ENV['YELP_SECRET_KEY'],
        token: Settings.yelp_token,
        token_secret: ENV['YELP_TOKEN_SECRET']
      })
  end

  def search
    lat = params[:latitude]
    long = params[:longitude]

    coordinate = {latitude: lat, longitude: long}
    response = @client.search_by_coordinates(coordinate, params, english_local)
    render :json => response
  end

  def business
    if (params[:business])
      response = @client.business(param[:business], english_local)
      render :json => response
    end
  end

  private

  def english_local
    return {lang: 'en'}
  end
end
