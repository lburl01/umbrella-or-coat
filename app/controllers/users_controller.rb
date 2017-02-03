class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @default_zip = ZipCode.where({ user_id: @user.id, default_zip: true }).first
    @default_weather = HTTParty.get("http://api.wunderground.com/api/7d88bd8046a20136/geolookup/conditions/q/#{@default_zip.zip_code}.json")
  end

end
