class RegistrationsController < Devise::RegistrationsController
  before_filter :parse_request


  private

  def sign_up_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

  def create_user_from_json

  end
  def parse_request
    @json = JSON.parse(request.body.read) rescue {}
    if @json['email'] != nil
      create_user_from_json
    end
  end

end

