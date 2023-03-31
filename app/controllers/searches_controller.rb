class SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @model = params[:model]
    @content = params[:content]
    @method =  params[:method]

    if @model == "user"
      @records = User.looks(params[:content], params[:method])
    else
      @records = Book.looks(params[:content], params[:method])
    end
  end
end
