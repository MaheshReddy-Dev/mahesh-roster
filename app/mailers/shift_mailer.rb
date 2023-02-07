class ShiftMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.shift_mailer.shift_details_email.subject
  #
  default_url_options[:host] = "localhost:3000"

  def shift_details_email(employee)
    @employee = employee
    if @employee.present?
    @shift = Shift.find_by(employee_id: employee.id)
    mail(to: @employee.email ,subject: "Shift details!") 
  end
end
end
