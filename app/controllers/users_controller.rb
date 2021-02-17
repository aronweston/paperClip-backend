class UsersController < ApplicationController

  def update
    user = User.find(params[:id])
    user.update user_params
  end

  def destroy
    user = User.find(params[:id])
    user.messages.destroy_all
    user.clips.destroy_all
    user.destroy
  end

  def clips
    user = User.find(params[:id])
    clips = user.clips
    report = []

    clips.each { |clip|
      report.push({
        username: clip.message.user.username,
        text: clip.message.text,
        messaged_at: clip.message.created_at,
        clipped_at: clip.created_at
      })
    }

    render json: report
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :first_name, :last_name, :city, :profile_photo)
  end
end
