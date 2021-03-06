class ArticlesController < ApplicationController
  def index
    articles = Article.all
    render json: serializer.new(articles)
  end

  def show
    render json: serializer.new(Article.find(params[:id]))
  end

  private

  def serializer
    ArticleSerializer
  end
end
