class Users::RegistrationsController < Devise::RegistrationsController
  def sign_up_params
    params.require(:user).permit(:fname, :lname, :username, :email, :password, :password_confirmation)
  end
end
