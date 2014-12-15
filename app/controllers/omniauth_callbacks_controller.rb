class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    auth_data = request.env['omniauth.auth']
    @user = User.find_or_create_by(email: auth_data[:info][:email]) do |user|
      user.first_name = auth_data[:info][:first_name]
      user.last_name = auth_data[:info][:last_name]
      user.facebook_token = auth_data[:credentials][:token]
    end
    sign_in @user
    redirect_to root_path
  end
end
