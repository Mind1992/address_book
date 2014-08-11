require './lib/contact'
require './lib/phone'
require './lib/email'
require './lib/address'
require 'pry'

def main_menu
	loop do
		puts "***Address Book***"
		puts "1: add contact"
		puts "2: list contacts' names"
		puts "3: show contact details"
		puts "4: add phone number"
		puts "5: add email"
		puts "6: add address"
		puts "7: update phone number"
		puts "8: update email"
		puts "9: update address"
		puts "10: delete contact"
		puts "11: exit"
		user_input = gets.chomp
		case user_input
		when "1" then add_contact
		when "2" then list_contacts
		when "3" then show_details
		when "4" then add_phone
		when "5" then add_email
		when "6" then add_address
		when "7" then update_phone
		when "8" then update_email
		when "9" then update_address
		when "10" then delete_contact
		when "11" then exit
		else puts "This is the wrong command"
		end
	end
end

def add_contact
 print "Add name: "; name = gets.chomp
 print "Add phone number: "; phone = gets.chomp
 print "Add email: "; email = gets.chomp
 print "Add mailing address: "; address = gets.chomp
 new_contact = Contact.new(name)
 new_phone = Phone.new(phone)
 new_email = Email.new(email)
 new_address = Address.new(address)
 new_contact.add_email(new_email)
 new_contact.add_address(new_address)
 new_contact.add_phone(new_phone)
 new_contact.add

 puts "\n\n"
 puts "New contact for name *#{new_contact.name}* added"
 puts "\n\n"
end


def list
	puts "\n\n"
	puts "***Contacts***"
	i = 1
	Contact.all.each do |contact|
		puts "#{i}. " + contact.name
		i += 1
	end
	puts "\n\n"
end

def list_contacts
	list
	puts "\n\n"
	puts "1: show contact details"
	puts "2: add phone number"
	puts "3: add email"
	puts "4: add address"
	puts "5: update phone number"
	puts "6: update email"
	puts "7: update address"
	user_input = gets.chomp
	case user_input
	when "1" then show_details
	when "2" then add_phone
	when "3" then add_email
	when "4" then add_address
	when "5" then update_phone
	when "6" then update_email
	when "7" then update_address
	else puts "This is the wrong command"
	end
end

def show_details
	list
	puts "Select the number of the contact"
 	user_input = gets.chomp.to_i
 	selected_contact = Contact.all[user_input - 1]
	puts "\n\n"
	puts "Contact details for *#{selected_contact.name}*: "
	puts
	puts "Phone numbers: " 
	selected_contact.phones.each { |phone| puts phone.phone }
	puts 
	puts "Emails: " 
	selected_contact.emails.each { |email| puts email.email }
	puts
	puts "Mailing addresses: " 
	selected_contact.addresses.each { |address| puts address.address}
	puts "\n\n"
end

def add_phone
	list
	puts "Select the number of the contact"
 	user_input = gets.chomp.to_i
 	selected_contact = Contact.all[user_input - 1]
	print "Add phone number: "; phone = gets.chomp
	new_phone = Phone.new(phone)
	selected_contact.add_phone(new_phone)
	puts "\n\n"
	
end

def add_email
	list
	puts "Select the number of the contact"
 	user_input = gets.chomp.to_i
 	selected_contact = Contact.all[user_input - 1]
	print "Add email: "; email = gets.chomp
	new_email = Email.new(email)
	selected_contact.add_email(new_email)
	puts "\n\n"
	
end

def add_address
	list
	puts "Select the number of the contact"
 	user_input = gets.chomp.to_i
 	selected_contact = Contact.all[user_input - 1]
	print "Add mailing address: "; address = gets.chomp
	new_address = Address.new(address)
	selected_contact.add_address(new_address)
	puts "\n\n"
end

def update_phone
	list
	puts "Select the number of the contact"
 	user_input = gets.chomp.to_i
 	selected_contact = Contact.all[user_input - 1]
 	puts "Select a phone number: "
 	counter = 1 
 	selected_contact.phones.each do |phone| 
 		puts "#{counter.to_s}. #{phone.phone}" 
 		counter += 1 
 	end
 	user_input = gets.chomp.to_i
 	selected_phone = selected_contact.phones[user_input - 1]
 	puts "Type a new phone number: "
 	new_number = gets.chomp 
 	selected_contact.update_phone(selected_phone.phone, new_number)
 	selected_contact.phones	
end

def update_email
	list
	puts "Select the number of the contact"
 	user_input = gets.chomp.to_i
 	selected_contact = Contact.all[user_input - 1]
 	puts "Select an email: "
 	counter = 1
 	selected_contact.emails.each do |email| 
 		puts "#{counter.to_s}. #{email.email}"
 		counter += 1
 	end
 	user_input = gets.chomp.to_i
 	selected_email = selected_contact.emails[user_input - 1]
 	puts "Type a new email number: "
 	new_email = gets.chomp 
 	selected_contact.update_email(selected_email.email, new_email)
 	selected_contact.emails
end

def update_address
	list
	puts "Select the number of the contact"
 	user_input = gets.chomp.to_i
 	selected_contact = Contact.all[user_input - 1]
 	puts "Select an address: "
 	counter = 1
 	selected_contact.addresses.each do |address| 
 		puts "#{counter.to_s}. #{address.address}"
 		counter += 1
 	end
 	user_input = gets.chomp.to_i
 	selected_address = selected_contact.addresses[user_input - 1]
 	puts "Type a new address: "
 	new_address = gets.chomp 
 	selected_contact.update_address(selected_address.address, new_address)
 	selected_contact.addresses
end

def delete_contact
	list
	puts "Select the number of the contact: "
	counter = 1
	Contact.all.each do |contact| 
		puts "#{counter.to_s}. #{contact.name}"
		counter += 1
	end
 	user_input = gets.chomp.to_i
 	selected_contact = Contact.all[user_input - 1]
 	Contact.delete_contact(selected_contact.name)

end

main_menu
