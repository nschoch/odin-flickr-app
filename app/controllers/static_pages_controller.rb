require 'flickr'

class StaticPagesController < ApplicationController

  def home
    flickr = Flickr.new
    @urls = []

    if params[:stream_id]
      photo_list = flickr.people.getPhotos(api_key: ENV['FLICKR_API_KEY'],
                                           user_id: params[:stream_id])
      url_info = photo_list.map { |photo| flickr.photos.getInfo(photo_id: photo.id) }
      @urls = url_info.map { |info| Flickr.url_m(info) }
    end
  end

end
