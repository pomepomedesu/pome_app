class PomesController < ApplicationController

  def index
    @pomes = Pome.all.order("created_at DESC")
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
    @pomes = Pome.find(params[:id])
  end

  def edit
    @pomes = Pome.find(params[:id])
  end

  def update
    @pomes = Pome.find(params[:id])
    @pomes.update(pomes_params)
    if @pomes.save
      redirect_to root_path
    else  
      render 'edit'
    end
  end

  def destroy
    @pomes = Pome.find(params[:id])
    @pomes.destroy
    redirect_to root_path
  end

  private

  def pomes_params
    params.require(:pome).permit(:name,:image,:writings).merge(user_id: current_user.id)
  end
end
