
#登録したルームを一覧表示
class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end
  
  #新規登録画面
  def new
    @room = Room.new
    @user = User.new
  end
  
  def show
  @room = Room.find(params[:id])
  end
  
  #DBに登録する記述
  def create
    @room = Room.new(
      room_name: params[:room_name],
      adress: params[:adress],
      introduction: params[:introduction],
      price: params[:price],
      room_image: "default_img.jpg",
      user_id: @current_user.id
      )
       if params[:room_image]
          @room.room_image = "#{@room.id}.jpg"
          room_image = params[:room_image]
          File.binwrite("public/rooms_img/#{@room.room_image}",room_image.read)
       end
      if @room.save
        flash[:notice] = "ルームを登録しました"
        redirect_to("/rooms/#{@room.id}")
      else
         flash[:notice] = @room.errors.full_messages.join("\n")
        render("rooms/new")
      end
  end
  
  def destroy 
    @room = Room.find(params[:id])
    @room.destroy 
    redirect_to :rooms
  end
end
