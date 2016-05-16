class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_password_email.subject

  Rails.application.config.sorcery.submodules = [:reset_password]


  Rails.application.config.sorcery.configure do |config|
    config.user_config do |user|
      user.reset_password_mailer = UserMailer
    end
  end

  def reset_password_email(user)
    @greeting = "Hi"


    mail to: "to@example.org"
  end

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "Welcome")
  end

end
