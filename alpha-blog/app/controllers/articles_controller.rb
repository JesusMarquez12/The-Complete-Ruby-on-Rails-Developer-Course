# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new; end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    @article.save

    redirect_to @article # alias for redirect_to article_path(@article)
  end

  def show
    # byebug
    @article = Article.find(params[:id])
  end
end
