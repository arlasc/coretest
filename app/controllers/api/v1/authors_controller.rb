class Api::V1::AuthorsController < ApplicationController
  def index
    author = Author.all.order(created_at: :desc)
    render json: author
  end

  def create
    author = Author.new(author_params)
    if author
        render json: author
    else
        render json: author.errors
    end
  end

  def show
    author = Author.all.order(created_at: :desc)
    if author
        render json: author
    else
        render json: author.errors
    end
  end
end
