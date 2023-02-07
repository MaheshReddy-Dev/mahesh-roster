require "test_helper"

class ShiftMailerTest < ActionMailer::TestCase
  test "shift_details_email" do
    mail = ShiftMailer.shift_details_email
    assert_equal "Shift details email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
