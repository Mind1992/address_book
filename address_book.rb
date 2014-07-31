require './lib/contact'

def main_menu
	loop do 
		puts "***Address Book***"
		puts "1: add contact"
		puts "9: exit"
		user_input = gets.chomp
		if user_input == "1"
			add_contact
		elsif user_input == "9"
			exit
		else 
			puts "This is the wrong command"
		end
	end
end

def add_contact
 print "Add name: "; name = gets.chomp
 print "Add phone number: "; phone = gets.chomp
 print "Add email: "; email = gets.chomp
 print "Add mailing address: "; address = gets.chomp
 new_contact = Contact.new(name,phone,email,address)
 new_contact.add
 puts "New contact for #{new_contact.name} added"
end
main_menu