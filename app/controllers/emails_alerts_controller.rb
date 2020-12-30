class EmailsAlertsController < ApplicationController
  before_action :authorized, except: [:create]

  def create
    @email = EmailsAlert.create(email_params)

    if @email.valid?
      render json: { vacancy: @email, status: 'success' }
    else
      render_errors(@product.errors.full_messages)
    end
  end

  private

  def email_params
    params.permit(:name, :email)
  end
end
