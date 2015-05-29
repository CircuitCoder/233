class EmojisController < ApplicationController
  def index
    @emojis = Emoji.all
  end

  def show
    @emoji = Emoji.find(params[:id])
  end

  def new
  end

  def create
    @emoji = Emoji.new(emoji_params)
    @emoji.save
    redirect_to @emoji
  end

  private
  def emoji_params
    params.require(:emoji).permit(:symbol, :definition)
  end
end
