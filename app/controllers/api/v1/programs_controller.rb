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
    @restaurant = Restaurant.create(yelp_id: params[:restaurant][:id])
    @event = Event.create(seatgeek_id: params[:event][:id])
    @program = Program.create(user_id: 1, restaurant: Restaurant.last, event: Event.last)
  end

  private
   def program_params
     params.require(:restaurant).permit(:id)
     params.require(:event).permit(:id)
   end

end
