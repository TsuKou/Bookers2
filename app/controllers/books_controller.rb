class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new
  end

  def index
    @books = Book.all
    @users = User.all
  end

  def show
    @user = current_user
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end

end
