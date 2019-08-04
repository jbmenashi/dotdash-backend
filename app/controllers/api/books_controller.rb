class Api::BooksController < ApplicationController
   before_action :find_book, only: [:show]

   def index
      @books = Book.all
      render json: @books
   end

   def show
      redner json: @book
   end

   private

   def find_book
      @book = Book.find(params[:id])
   end

en