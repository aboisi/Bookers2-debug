class BookCommentsController < ApplicationController
  
  def create
    book = Book.find(params[:book_id])
    @comment = current_user.book_comments.new(book_comment_params)
    @comment.book_id = book.id
    @comment.save
    @book_comment = BookComment.new
  end
  
  def destroy
    # BookComment.find_by(id: params[:id], book_id: params[:book_id]).destroy
    # @book = Book.find(params[:book_id])
    # book_comment = @book.book_comments.find(params[:id])
    # book_comment.destroy
     @comment = BookComment.find(params[:id])
    @comment.destroy
  end

  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
