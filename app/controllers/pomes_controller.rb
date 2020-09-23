class PomesController < ApplicationController
  before_action :set_pomes, only: [:show,:edit,:update,:destroy]
  before_action :move_to_index, except: [:index,:show,:search]
  before_action :redirect_index, except: [:index,:show,:create,:new,:search]

  def index
    @pomes = Pome.includes(:user).order("created_at DESC").search(params[:keyword])
  end

  def new
    @pomes = Pome.new
  end

  def create
    @pomes = Pome.new(pomes_params)
    if @pomes.save
      redirect_to root_path
    else   
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @pomes.update(pomes_params)
    if @pomes.save
      redirect_to root_path
    else  
      render 'edit'
    end
  end

  def destroy
    @pomes.destroy
    redirect_to root_path
  end

  def search
    @pomes = Pome.search(params[:pome_color])
  end

  private

  def pomes_params
    params.require(:pome).permit(:name,:image,:writings,:pome_color).merge(user_id: current_user.id)
  end

  def set_pomes
    @pomes = Pome.find(params[:id])
  end

  def move_to_index
    unless user_signed_in?
      redirect_to root_path
    end
  end

  def redirect_index
    unless user_signed_in? && current_user.id == @pomes.user_id
      redirect_to root_path
    end
  end
end
