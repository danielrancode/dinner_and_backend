class Api::V1::ProgramsController < ApplicationController
  # skip_before_action :authorized, only: [:index, :show, :create]

  def index
    @user = User.find(params[:user_id])
    programs = @user.programs
    render json: programs
  end

  def show
    program = Program.find(params[:id])
    render json: program
  end

  def create
    @user = User.find(params[:user_id])
    @restaurant = Restaurant.create(json_data: params[:data][:restaurant_data])
    @event = Event.create(json_data: params[:data][:event_data])
    @program = Program.create(user: @user, restaurant: @restaurant, event: @event)
  end

  # private
  #  def program_params
  #    params.require(:data).permit(:restaurant_data, :event_data)
  #  end

   # def user_params
   #   params.require(:)
   # end

end
