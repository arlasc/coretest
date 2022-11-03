class Api::V1::ApiAuthorsController < ApplicationController
  def index
    authors = Author.all()
    render json: authors
  end

  def create
    authors = Author.create!(author_params)
    if authors
        render json: authors
    else
        render json: authors.errors
    end
  end

  def show
    authors = Author.all()
    if authors
        render json: authors
    else
        render json: authors.errors
    end
  end
end
