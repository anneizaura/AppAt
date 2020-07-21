class SearchesController < ApplicationController
  def new
  end

  def show
    @search_term = params['q'].capitalize
    response = RestClient.get "https://api.github.com/search/repositories?q=language:#{@search_term}"
    @json = JSON.parse response
  end
end
