class ContactMailer < ActionMailer::Base
    default to: 'duroneppsjr@hotmail.com'
    
    def contact_email(name,email,ethnicity,age,message,phone_number)
        @name = name
        @email = email
        @ethnicity = ethnicity
        @age = age
        @message = message
        @phone_number = phone_number
       
       mail(from:email, subject: 'Model Sign UP') 
    end
    
end