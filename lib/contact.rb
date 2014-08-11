require 'pry'
class Contact
  attr_accessor :name, :phones, :emails, :addresses
  @@contacts = []

  def initialize(name)
    @name = name
    @phones = []
    @emails = []
    @addresses = []
  end

  def Contact.all
    @@contacts
  end

  def add
    @@contacts << self
  end

  def Contact.clear
    @@contacts = []
  end


  def add_email(email)
    @emails << email
  end

   def add_address(address)
    @addresses << address
  end

  def add_phone(phone)
    @phones << phone
  end
  
  def update_phone(old_phone, new_phone)
    self.phones.select! do |phone| 
      if phone.phone == old_phone
        phone.phone = new_phone
      end
    end
  end

  def update_email(old_email, new_email)
    self.emails.select! do |email| 
      if email.email == old_email
        email.email = new_email
      end
    end
  end

  def update_address(old_address, new_address)
    self.addresses.select! do |address| 
      if address.address == old_address
        address.address = new_address
      end
    end
  end

  def self.delete_contact(inputted_name)
    self.all.select! do |contact|
      if contact.name == inputted_name
        self.all.delete(contact)
      end
    end
  end
end



