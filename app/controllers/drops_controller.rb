class DropsController < ApplicationController
  before_action :set_drop, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @drops = Drop.all
  end

  def new
    if params[:back]
      @drop = Drop.new(drops_params)
    else
      @drop = Drop.new
    end
  end

  def create
    @drop = Drop.new(drops_params)
    @drop.user_id = current_user.id
    if @drop.save
      redirect_to drops_path, notice: "いれた！"
    else
      render action: "new"
    end
  end

  def edit
  end

  def update
    @drop.update(drops_params)
    redirect_to drops_path, notice: "いれた。"
  end

  def destroy
    @drop.destroy
    redirect_to drops_path, notice:"すてた・・・。"
  end

  def confirm
    @drop = Drop.new(drops_params)
    render :new if @drop.invalid?
  end

  private
    def drops_params
      params.require(:drop).permit(:content)
    end
    def set_drop
      @drop = Drop.find(params[:id])
    end
end
