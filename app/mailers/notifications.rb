class Notifications < ActionMailer::Base
  default from: "whitperson@yahoo.com"

  def welcome(user)
    @user = user #makes user instance variable so it's available in view
    @greeting = "Hi"

    mail to: "whitperson@gmail.com", :subject => "Welcome to Barterville"
  end

  def successful_trade
    @greeting = "Hi"

    mail to: "whitperson@gmail.com", :subject => "Your Latest Barter Was Successful"
  end
end
