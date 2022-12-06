class BooksController < ApplicationController
  def new
    @book=Book.new
  end

  def create
   book=Book.new(book_params)
   if book.save
   flash[:notice]="Successfully created"
    redirect_to books_path(@book.id) #投稿一覧へリダイレクト
   else
    render :new
   end
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
    if book.update(book_params)
     flash[:notice]="Successfully updated"
     redirect_to book_path(book.id) #詳細画面へリダイレクト
    else
       render :new
    end
  end

  def destroy
    book=Book.find(params[:id]) #データを一件取得
    book.destroy #データを削除
    flash[:notice] = "Successfully deleted"
    redirect_to '/books' #投稿一覧画面へリダイレクト
  end


  private

  def book_params
    params.require(:book).permit(:title,:body,)
  end

end


