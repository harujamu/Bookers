class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @books = Book.all
  end
  
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/#{book.id}' 
  end

  def show
  end

  def edit
  end
end
