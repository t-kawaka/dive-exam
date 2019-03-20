class EstatesController < ApplicationController
  def index
   @estates = Estate.all
 end

 def show
   @estate = Estate.find(params[:id])
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
   @estate = Estate.find(params[:id])
   @station1 = @estate.station1s.find_by(estate_id:@estate.id)
   @station2 = @estate.station2s.find_by(estate_id:@estate.id)
 end

 def update
   @estate = Estate.find(params[:id])
   if @estate.update(estate_params)
     redirect_to estates_path, notice:"投稿を編集しました。"
   else
     render 'new'
   end
 end

 def destroy
   @estate = Estate.find(params[:id])
   @estate.destroy
   redirect_to estates_path, notice:"投稿を削除しました。"
 end

 private

 def estate_params
   params.require(:estate).permit(:house,:money,:address,:age,:information , station1s_attributes: [:id, :rail,:name,:walk], station2s_attributes: [:id, :rail,:name,:walk])
 end
end
