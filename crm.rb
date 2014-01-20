require_relative 'contact'
require_relative 'rolodex'

class CRM
	def initialize
		@rolodex = Rolodex.new
		@rolodex.add_new_contact("heather", "graham", "a@b.c")
	end


	def print_main_menu #.self makes it a class method
  		puts "[1] Add a new contact"
  		puts "[2] Modify an existing contact"
  		puts "[3] Delete a contact"
  		puts "[4] Display all contacts"
  		puts "[5] Find a contact"
  		puts "[6] Exit"
  		puts "Enter a number: "
	end

	def main_menu
		print_main_menu
		user_selected = gets.to_i
		call_option(user_selected)
	end

	def call_option(user_selected)
		add if user_selected == 1
		modify_existing_contact if user_selected == 2
		delete if user_selected == 3
		@rolodex.display_all_contacts if user_selected == 4
		find if user_selected == 5
		exit if user_selected == 6
	end

	def add
		print "Enter first name:"
		first_name = gets.chomp
		print "Enter last name:"
		last_name = gets.chomp
		print "Enter e-mail address:"
		email = gets.chomp
		@rolodex.add_new_contact(first_name, last_name, email)
	end

	def find 
		puts "Would you like to find the contact by id, first name, last name or email?"
		find_contact_response = gets.chomp.downcase
		if find_contact_response == "id"
			puts "What is the id of the contact?" 
			id = gets.chomp
			@rolodex.find_by_id(id)
		elsif find_contact_response == "first name"
			puts "What is the first name of the contact?"
			first_name = gets.chomp
			@rolodex.find_by_first_name(first_name)
		elsif find_contact_response == "last name"
			puts "What is the last name of the contact?" 
			last_name = gets.chomp
			@rolodex.find_by_last_name(last_name)
		elsif find_contact_response == "email"
			puts "What is the email of the contact?" 
			email = gets.chomp
			@rolodex._find_by_email(email)
		else
			puts "Type more carefully, please!"
			find_contact
		end
	end

	def delete
		puts "What is the id of the contact you would like to delete?"
		id = gets.chomp
		puts "Are you sure you want to delete this contact?"
		confirmation = gets.chomp
		@crm.main_menu if confirmation == "no"
		@rolodex.delete_contact(id) if confirmation == "yes"
	end

	def modify_existing_contact
		puts "What is the id of the contact you would like to modify?"
		id = gets.chomp
		puts "What is the new first name?"
		first_name = gets.chomp
		puts "What is the new last name?"
		last_name = gets.chomp
		puts "What is the new email?"
		email = gets_chomp
		@rolodex.modify_existing_contact(first_name)
end

@crm = CRM.new
loop do
	@crm.main_menu
end
