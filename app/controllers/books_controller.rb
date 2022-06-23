class BooksController < ApplicationController

def new
  @book = Book.new
end


# 直す
  def create
    @book = Book.new(book_params)
    @books = Book.all
    if @book.save
      redirect_to book_path(@book.id)
    else
      render:index
    end
  end
  
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
   
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/books'
  end
 
  
  private
  def book_params
    params.permit(:title,:body)
    # params.permit(:title,:body).require(:book)?
  end
 
end

