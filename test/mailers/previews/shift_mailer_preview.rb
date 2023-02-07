# Preview all emails at http://localhost:3000/rails/mailers/shift_mailer
class ShiftMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/shift_mailer/shift_details_email
  def shift_details_email
    # shift = Shift.new(email: "maheshkreddy24@gmail.com", message: "A new shift allocated")

    # OrderMailer.with(shift: order).new_order_email
    # ShiftMailer.with(shift: order).shift_details_email
    employee = Employee.last
    ShiftMailer.shift_details_email(employee)
  end

end
