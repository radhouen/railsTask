class TagsController < ApplicationController
  def index
    @tags =Tag.all
  end

  def new
    @tag = Tag.new

  end
  def create
    @tag= Tag.new(tag_params)
    redirect to: tags_path
  end

  def edit
  end

  def update
  end

  def destroy
    @tag = Tag.destroy
  end

  private

  def set_tag
    @tag = Tag.find(params[:id])
  end

  def tag_params
    params.require(:tag).permit(:title)
  end
end
