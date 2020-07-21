class SearchesController < ApplicationController
  before_action :find_repositories, only: [:create, :show]
  def create
    #preciso salvar o repositório no DB
    @search = Search.find(params[:search_id])
    @repository.search = @search
    @repository.save
    redirect_to search_path(@search)
  end

  def new
  end

  def show
    response = RestClient.get "https://api.github.com/search/repositories?q=language:#{search_term}"
    @json = JSON.parse response
    @json.all
  end

  private

   def find_repositories
     @search_term = params['q'].capitalize
   end
end
