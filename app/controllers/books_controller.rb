class BooksController < ApplicationController

  def create
   @book=Book.new(book_params)
   if @book.save
   flash[:notice]="Successfully created"
    redirect_to book_path(@book.id)
           #idはインスタンス変数
   else
     @books=Book.all
    render :index
   end
  end


  def index
    @books=Book.all
    @book=Book.new
  end

  def show
   @book=Book.find(params[:id])
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
    @book=Book.find(params[:id])
    if @book.update(book_params)
     flash[:notice]="Successfully updated"
     redirect_to book_path(@book.id) #詳細画面へリダイレクト
               #idはインスタンス変数
    else
       render :edit
    end
  end

  def destroy
    @book=Book.find(params[:id]) #データを一件取得
    @book.destroy #データを削除
    flash[:notice] = "Successfully deleted"
    redirect_to '/books' #投稿一覧画面へリダイレクト
  end


  private

  def book_params
    params.require(:book).permit(:title,:body,)
  end

end


