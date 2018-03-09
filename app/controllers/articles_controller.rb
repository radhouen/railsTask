class ArticlesController < ApplicationController
  def index
      @articles =   if params[:item]
        Article.find_by("#{params[:filter]}","#{params[:term]}")
      else
     Article.all
     end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id
    @article.tag(params[:tag_list])

    redirect to: articles_path
  end

  def edit
  end

  def update
  end

  def destroy
    @article = Article.destroy
  end

  private
    def set_article
      @articl = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :content, :tags, :term, :filter)
    end
end
