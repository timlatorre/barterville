require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "welcome" do
    mail = Notifications.welcome
    assert_equal "Welcome", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "successful_trade" do
    mail = Notifications.successful_trade
    assert_equal "Successful trade", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
