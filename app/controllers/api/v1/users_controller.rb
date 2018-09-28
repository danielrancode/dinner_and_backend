class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create] # TODO: remove :index and :show after auth setup complete

  def index
    users = User.all
    render json: users
  end

  # def show
  #   # current_user = User.find(params[:id]) # this line does not appear in Andrew's!!
  #   render json: { user: UserSerializer.new(current_user) }, status: :accepted
  #   # render json: user
  # end

  def find
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :username, :password)
  end

end
