# Preview all emails at http://localhost:3000/rails/mailers/shift_mailer
class ShiftMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/shift_mailer/shift_details_email
  def shift_details_email
    ShiftMailer.shift_details_email
  end

end
