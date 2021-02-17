class ClipsController < ApplicationController
  
  def create
    clip = Clip.new(clips_params)
    clip.save
  end

  def show
    clip = Clip.find(params[:id])
    render json: {
      username: clip.message.user.username,
      text: clip.message.text,
      messaged_at: clip.message.created_at,
      clipped_at: clip.created_at
    }
  end

  def destroy
    clip = Clip.find(params[:id])
    clip.destroy
  end

  private
  def clips_params
    params.require(:clips).permit(:user_id, :message_id)
  end

end
