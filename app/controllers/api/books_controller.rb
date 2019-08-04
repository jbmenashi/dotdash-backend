class Api::BooksController < ApplicationController
   before_action :find_book, only: [:show]

   def index
      @books = Book.all
      render json: @books
   end

   def show
      redner json: @book
   end

   def create
      @book = Book.new(book_params)
      if @book.save
         render json: @book, status: :accepted
      else
         render json: { errors: @book.errors.full_messages }, status: :unprocessible_entity
      end
  end

   private

   def book_params
      params.permit(:title, :author, :pub_year, :average_rating, :image_url)
   end


   def find_book
      @book = Book.find(params[:id])
   end

en