class BooksController < ApplicationController
  def new
    @book=Book.new
  end

  def create
   book=Book.new(book_params)
   book.save
   flash[:notice]="Book was successfully created."
   redirect_to books_path(book.id)
  end


  def index
    @books=Book.all
  end

  def show
   @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    book=Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id) #詳細画面へリダイレクト
  end
  
  def destroy
    book=Book.find(params[:id]) #データを一件取得
    book.destroy #データを削除
    redirect_to '/books' #投稿一覧画面へリダイレクト
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end

end


