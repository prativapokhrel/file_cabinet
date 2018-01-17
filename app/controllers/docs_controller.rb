class DocsController < ApplicationController

  before_action :find_doc, only: [:show, :edit, :update, :destroy]
  def new
    @doc = current_user.docs.build
  end 

  def index
    @docs = Doc.where(user_id: current_user.id).order("created_at DESC")
  end 

  def create
    @doc = current_user.docs.build(doc_params)
    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end 
  end

  def show
    @doc = Doc.find(params[:id])
    liked_by_current_user = @doc.post_likes.where(user_id: current_user.id)
    @like = liked_by_current_user.last
  end 

  def edit
  end 

  def update
    if @doc.update(doc_params)
      redirect_to @doc
    else
      render 'edit'
    end
  end

  def destroy
    @doc.destroy
    redirect_to docs_path

  end

  private

  def find_doc
    @doc = Doc.find(params[:id])
  end 

  def doc_params
    params.require(:doc).permit(:title, :content)

  end 
end 