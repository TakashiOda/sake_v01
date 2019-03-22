class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(user_params)
    if @user.save
      redirect_to user_path(@user)
    # elsif @user.errors.details[:profile_text][0][:error] = :too_long
    #   flash[:alert] = "プロフィールは150字以内で入力してください"
    #   render 'edit'
    else
      # binding.pry
      # flash[:alert] = @user.errors.full_messages
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
                                   :profile_text, :location, :email,
                                   :sex, :generation)
    end
end
