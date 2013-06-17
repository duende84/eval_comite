class ContactMailer < ActionMailer::Base
  default :from => "notifications@example.com"

  def contact_email(contact)
    @contact = contact
    mail(:to => ['andreselduende@gmail.com', 'michelclar07@gmail.com', 'vanmartc@gmail.com'], :subject => "#{contact.subject}")
  end
end
