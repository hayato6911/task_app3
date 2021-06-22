class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end

  def edit
  end
end
