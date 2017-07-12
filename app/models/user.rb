class User < ActiveRecord::Base
  
   has_many :permissions 
   has_many :roles, through: :permissions
   has_many :address
   has_many :contact_details
   	
   # Include default devise modules. Others available are:
   # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   validates_presence_of :business_name, :first_name, :last_name, :email
   validates_uniqueness_of :email
   validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

   after_create :generate_address
   after_create :generate_contact_details
   after_create :generate_buyer_role

	  def generate_buyer_role
	  	unless Role.find_by(name: "buyer").nil?
	  		Permission.create(user_id: self.id, role_id: Role.find_by(name: "buyer").id)
	  	end
	  end  

	  def role?(role)
	  	self.roles.pluck(:name).include? (role)
	  end


     def generate_address
       Address.create(user_id: self.id, address: self.address, location: self.location)
     end

     def generate_contact_details
      ContactDetail.create(user_id: self.id, email: self.email, phone: self.phone)
     end

end
