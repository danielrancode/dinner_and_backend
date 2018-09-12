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
    byebug
  end

end
