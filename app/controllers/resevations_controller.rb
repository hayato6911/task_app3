class ResevationsController < ApplicationController
  def index
   @resevations = Resevation.all
  end
  
  def new
   @resevation = Resevation.new
  end
  
  def create
   @resevation = Resevation.new(params.require(:resevation).permit(:start_day, :end_day, :number_of_people))
    if @resevation.save
      redirect_to :resevations
    else
      render "new"
    end
  end
  
  def show
  end
  
  def destroy 
    @resevation = Resevation.find(params[:id])
    @resevation.destroy 
    redirect_to :resevations
  end
end
