require './lib/contact'

def main_menu
	loop do 
		puts "***Address Book***"
		puts "1: add contact"
		puts "2: list contacts' names "
		puts "9: exit"
		user_input = gets.chomp
		if user_input == "1"
			add_contact
		elsif user_input == "2"
			list_contacts
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
 puts "\n\n"
 puts "New contact for name *#{new_contact.name}* added"
 puts "\n\n"
end

def list_contacts
	puts "\n\n"
	puts "***Contacts***"
	i = 1
	Contact.all.each do |contact|
		puts "#{i}. " + contact.name 
		i += 1
	end 
	puts "\n\n"
end
main_menu