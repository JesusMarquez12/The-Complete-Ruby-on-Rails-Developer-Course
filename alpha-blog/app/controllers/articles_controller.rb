# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new; end

  def create
    render plain: params[:article]
  end

  def show
    # byebug
    @article = Article.find(params[:id])
  end
end
