class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy!
    redirect_to root_path
  end

  private

    def user_params
      params.require(:user).permit(:username, :profile_image,
                                   :profile_text, :location, :email, :sex)
    end
end
