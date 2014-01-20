# Customer Management Applications
----------------------------------
# => need to keep track of all users, add users, remove users
# => customers (name, email etc are properties of the customer) - array for the customers - the database(rolodex?) - info stored in hashes
# => using numeric ID's to store customers into a database
# => need to update, modify, search for customers

# User Stories
---------------
# => non-technical descriptions of the features of an application you want to build
# => "As a user..." - I should be able to create a new contact
#  					- I should be able to modify a contact
# 					- I should be able to find a contact
# 					- I should be able to remove a contact

# Defining our Mental Model
---------------------------
# => Contact: ID, Name, address, age, email
# => Rolodex: list of contacts: create, remove, modify, and find based on any attribute
# => What are the responsibilities of the class?
# => class vs instance of the class
# 		- class is the recipe, instance is like a meal
#  		- class is always singular
# 		- .new and initialize are synonymous 

# missing the program that runs


class Contact
	attr_accessor :name, :email, :age 					# creates methods to read and write these variables
	attr_reader :id 									# creates method to read the id variable
	def initialize(id, name, email, age) 				# creates an instance of contact
		@id = id
		@name = name
		@email = email
		@age = age
	end
end
