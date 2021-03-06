class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy, :likes, :dislikes]

  # GET /articles
  def index
    @articles = Article.all
    json_response(@articles)
  end

  # POST /articles
  def create
    @article = Article.create!(article_params)
    json_response(@article, :created)
  end

  # GET /articles/:id
  def show
    json_response(@article)
  end

  # PUT /articles/:id
  def update
    @article.update(article_params)
    head :no_content
  end

  # DELETE /articles/:id
  def destroy
    @article.destroy
    head :no_content
  end

  # GET /articles/:id/likes
  def likes
    # Optimization of query (instead of @article.likes.count)
    @likes = Like.where(article_id: @article_id).count
    json_response(@likes)
  end

  # GET /articles/:id/dislikes
  def dislikes
    # Optimization of query (instead of @article.dislikes.count)
    @dislikes = Dislike.where(article_id: @article_id).count
    json_response(@dislikes)
  end

  private

  def article_params
    # whitelist params
    params.permit(:title, :description)
  end

  def set_article
    @article = Article.find(params[:id])
    @article_id = @article.id
  end
end
