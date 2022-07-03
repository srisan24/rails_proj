class BooksController < ApplicationController

  def index
    @l = Library.find(1)
    books = @l.books
    books = @l.books
    Rails.logger.info("test=========================")
    session[:accessed_books_new] = true
    @books = @l.books  
  end

end
