class Api::V1::ProgramsController < ApplicationController

  def index
    programs = Program.all
    render json: programs
  end

  def show
    program = Program.find(params[:id])
    render json: program
  end

  def create
    @restaurant = Restaurant.create(json_data: params[:data][:restaurant_data])
    @event = Event.create(json_data: params[:data][:event_data])
    @program = Program.create(user: User.last, restaurant: Restaurant.last, event: Event.last)
  end

  private
   def program_params
     params.require(:data).permit(:restaurant_data, :event_data)
   end

end
