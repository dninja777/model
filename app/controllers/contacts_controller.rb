class ContactsController < ApplicationController
   
   def new
       @contact = Contact.new
   end
   
   def create
       @contact = Contact.new(contact_params)
       if @contact.save
           name = params[:contact][:name]
           email = params[:contact][:email]
           phone_number = params[:contact][:phone_number]
           ethnicity = params[:contact][:ethnicity]
           age = params[:contact][:age]
           message = params[:contact][:message]
           
           ContactMailer.contact_email(name,email,phone_number,ethnicity,age,message).deliver
           flash[:success] = "You Sent Your Registration"
           redirect_to new_contact_path
       else
           redirect_to new_contact_path
           
       end 
   
       
   end
   
   
   private
   def contact_params
      params.require(:contact).permit(:name,:email,:phone_number,:message,:ethnicity,:age) 
   end
    
end