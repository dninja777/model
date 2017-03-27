class ContactMailer < ActionMailer::Base
    default to: 'duroneppsjr@hotmail.com'
    
    def contact_email(name,email,ethnicity,age,message,phone_number)
       
       mail(from:email, subject: 'Model Sign UP') 
    end
    
end