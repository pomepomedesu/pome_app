class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @name = user.name
    @pomes = user.pomes
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else  
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:genre_id,:a_word)
  end
end
