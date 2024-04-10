class ArticlesController < ApplicationController
require "http"

  def index 
    response = HTTP.get("https://newsapi.org/v2/everything?q=tesla&apiKey=#{ENV["NEWS_API_KEY"]}")
    data = JSON.parse(response)
    render json: data
  end
end
