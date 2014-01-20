require_relative 'contact'
class Rolodex
	attr_accessor :first_name, :last_name, :email		 	# creates methods to read and write these variables
	attr_reader :id 									# creates method to read the id variable

	def initialize
		@contacts = []
		@id = 1000
	end

	def add_new_contact(first_name, last_name, email)
		@id += 1 
		contact = Contact.new(@id, first_name, last_name, email)								
		@contacts << contact
		puts "You have successfully added #{contact.first_name} #{contact.last_name} to the database."							
	end

	def find_by_id(id)
		@contacts.each do |contact|
			if contact.id.to_i == id.to_i 
			  	puts "id: #{contact.id}"
				puts "First name: #{contact.first_name}"
				puts "Last name: #{contact.last_name}"
				puts "E-mail: #{contact.email}"
			else
				puts "No contact with that ID."
		  	end
		end
	end

	def find_by_first_name(first_name)
		@contacts.each do |contact|
			if contact.first_name == first_name 
			  	puts "id: #{contact.id}"
				puts "First name: #{contact.first_name}"
				puts "Last name: #{contact.last_name}"
				puts "E-mail: #{contact.email}"
			else
				puts "No contact with that ID."
		  	end
		end
	end

	def find_by_last_name(last_name)
		@contacts.each do |contact|
			if contact.last_name == last_name 
			  	puts "id: #{contact.id}"
				puts "First name: #{contact.first_name}"
				puts "Last name: #{contact.last_name}"
				puts "E-mail: #{contact.email}"
			else
				puts "No contact with that ID."
		  	end
		end
	end

	def find_by_email(email)
		@contacts.each do |contact|
			if contact.email == email 
			  	puts "id: #{contact.id}"
				puts "First name: #{contact.first_name}"
				puts "Last name: #{contact.last_name}"
				puts "E-mail: #{contact.email}"
			else
				puts "No contact with that ID."
		  	end
		end
	end

	def display_all_contacts
		puts "No contacts to display :(" if @contacts.empty? 
		@contacts.each do |contact|
			puts "id: #{contact.id}, first name: #{contact.first_name}, last name: #{contact.last_name}, email: #{contact.email}"
		end
	end

	def delete_contact(id)
		@contacts.delete_if { |contact| contact.id.to_i == id.to_i }
		puts "Contact succcessfully deleted"
	end

end