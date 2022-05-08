class LoginController < ApplicationController

  before_action :authorize_request, except: :login
  skip_before_action :verify_authenticity_token

  def login

    if params[:account_type] == "teacher"
      return render json: { error: 'please provide email' } if !params[:email]
      @user = Teacher.find_by_email(params[:email])
    elsif params[:account_type] == "student"
      return render json: { error: 'please provide roll_no' } if !params[:roll_no]
      @user = Student.find_by(roll_no: params[:roll_no])
    else
      return render json: { error: 'please provide account_type i.e teacher or student' }, status: :unauthorized
    end
    return render json: { error: 'please provide password' } if !params[:password]
    if @user&.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"), user: @user }, status: :ok
    else
        render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  private

  def login_params
    params.permit(:email, :password, :roll_no, :account_type)
  end

end
