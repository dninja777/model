class Contact < ActiveRecord::Base
    validates :picture, presence: true
    validates :name, presence: true
    validates :email, presence: true
    validates :ethnicity, presence: true
    validates :phone_number, presence: true
    validates :message, presence: true
    
      has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
  
   has_attached_file :picture_two, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture_two, content_type: /\Aimage\/.*\z/
  
   has_attached_file :picture_three, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture_three, content_type: /\Aimage\/.*\z/
    
    
    
end