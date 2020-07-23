class SearchesController < ApplicationController
  def new
    if params['q'].present?
      @search_term = params['q'].capitalize
      response = RestClient.get "https://api.github.com/search/repositories?q=language:#{@search_term}"
      @json = JSON.parse response
    end
  end

  def show
  end
end
