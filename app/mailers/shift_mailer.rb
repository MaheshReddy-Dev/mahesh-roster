class ShiftMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.shift_mailer.shift_details_email.subject
  #
  def shift_details_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
