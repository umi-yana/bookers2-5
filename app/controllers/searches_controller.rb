class SearchesController < ApplicationController
before_action :authenticate_user!

  def search
  @renge = params[:range]

    if @renge == "User"
      @users = User.looks(params[:search], params[:word])
    elsif @renge == "Book"
      @book = Book.looks(params[:search], params[:word])
      @book = Book.all
    end
  end

end
