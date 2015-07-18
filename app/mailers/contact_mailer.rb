class ContactMailer < ApplicationMailer
  def contact_mail(general_info, contact_msg)
    @general_info = general_info
    @contact_msg = contact_msg
    mail(to: general_info.contact_email, from: contact_msg['email'], subject: contact_msg['subject'])
  end
end
