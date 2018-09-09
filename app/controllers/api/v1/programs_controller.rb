class Api::V1::ProgramsController < ApplicationController

  def index
    @programs = Program.all
    render json: @programs
  end

  def update
    @program.update(program_params)
    if @program.save
      render json: @program, status: accepted
    else
      render json: { errors: @program.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def program_params
    params.permit(:name, :password)
  end

  def find_program
      @program = Program.find(params[:id])
  end

end
