class UserMailer < ApplicationMailer
  
  def send_invitation
    @user = params[:user]
    mail(to: @user.email)
  end
end
