class ContactsController < ApplicationController
   
   def new
       @contact = Contact.new
   end
   
   def create
       @contact = Contact.new(contact_params)
       if @contact.save
           picture = params[:contact][:picture]
           name = params[:contact][:name]
           email = params[:contact][:email]
           ethnicity = params[:contact][:ethnicity]
           age = params[:contact][:age]
           phone_number = params[:contact][:phone_number]
           picture_two = params[:contact][:picture_two]
           picture_three = params[:contact][:picture_three]
          
           
           message = params[:contact][:message]
           ContactMailer.contact_email(picture,name,email,phone_number,ethnicity,age,message,picture_two,picture_three).deliver_now
           flash[:success] = "You Sent Your Registration"
           redirect_to new_contact_path
       else
           flash[:danger] = "Error"
           redirect_to new_contact_path
           
       end 
   
       
   end
   
   
   private
   def contact_params
      params.require(:contact).permit(:name,:email,:phone_number,:message,:ethnicity,:age,:picture,:picture_two,:picture_three) 
   end
    
end