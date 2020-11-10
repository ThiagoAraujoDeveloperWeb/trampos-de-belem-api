class UsersController < ApplicationController

  before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      # render json: {user: @user, token: token}
      render json: { status: 'cadastrado', message: 'Anunciante cadastrado' }
    else
      render json: { error: "Verifique se os dados estão corretos." }
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: { user: @user, token: token, role: 'user' }
    else
      render json: { error: "E-mail ou senha invalidos" }
    end
  end

  def index
    @users = User.all

    render json: @users
  end

  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:fullName, :contactPhone,
                  :email, :nameCompany,
                  :companyDescription,
                  :companyWebsite, :city,
                  :password)
  end
end
