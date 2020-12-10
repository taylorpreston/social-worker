class UsersController < Clearance::UsersController
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :license_type, :license_exipation_date, :license_number)
  end
end