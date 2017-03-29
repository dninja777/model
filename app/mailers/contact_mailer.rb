class ContactMailer < ActionMailer::Base
    default to: 'duroneppsjr@hotmail.com'
    
    def contact_email(picture,name,email,ethnicity,age,message,phone_number,picture_two,picture_three)
        @picture = picture
        @name = name
        @email = email
        @ethnicity = ethnicity
        @age = age
        @phone_number = phone_number
        @message = message
        @picture_two = picture_two
        @picture_three = picture_three
       mail(from: email, subject: 'Model Sign UP') 
    end
    
end