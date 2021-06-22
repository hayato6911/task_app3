class ResevationsController < ApplicationController
  def index
    @rooms = Room.all
    @resevations = Resevation.all
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end
  
  def new
    @resevation = Resevation.new
    @room = Room.new
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end
  
  def create
    @resevation = Resevation.new(resevation_params)
    @resevation.user_id = current_user.id
    @resevation.save
    redirect_to resevations_posts_path
  end
  
  def show
   @resevation = Resevation.find(params[:id])
   @resevations = Resevation.all
   @rooms = Room.all
  end
  
  def posts
   @resevations = current_user.resevations.all
  end
  
  def destroy 
    @resevation = Resevation.find(params[:id])
    @resevation.destroy
    redirect_to :resevations
  end
  
   private
    def resevation_params
      params.require(:resevation).permit(:room_id, :room_image,:introduction, :price, :start_day, :end_day, :number_of_people)
    end
end