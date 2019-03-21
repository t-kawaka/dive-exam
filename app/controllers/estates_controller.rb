class EstatesController < ApplicationController
  before_action :set_estate, only:[:show, :edit, :update, :destroy]
  def index
   @estates = Estate.all
  end

  def show
   @station1 = @estate.station1s.find_by(estate_id:@estate.id)
   @station2 = @estate.station2s.find_by(estate_id:@estate.id)
  end

  def new
   @estate = Estate.new
   @estate.station1s.build
   @estate.station2s.build
  end

  def create
   @estate = Estate.new(estate_params)
   if @estate.save
   redirect_to estates_path, notice:"投稿を作成しました。"
   else
     render 'new'
   end
  end

  def edit
  end

  def update
   if @estate.update(estate_params)
     redirect_to estates_path, notice:"投稿を編集しました。"
   else
     render 'new'
   end
  end

  def destroy
   @estate.destroy
   redirect_to estates_path, notice:"投稿を削除しました。"
  end

  private

  def estate_params
   params.require(:estate).permit(:house,:money,:address,:age,:information , station1s_attributes: [:id, :rail,:name,:walk], station2s_attributes: [:id, :rail,:name,:walk])
  end

  def set_estate
   @estate = Estate.find(params[:id])
  end
end
