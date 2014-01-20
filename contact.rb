class Contact
	attr_accessor :first_name, :last_name, :email		 	# creates methods to read and write these variables
	attr_reader :id 									# creates method to read the id variable
	def initialize(id, first_name, last_name, email) 		# creates an instance of contact
		@id = id
		@first_name = first_name
		@last_name = last_name
		@email = email
	end
end

