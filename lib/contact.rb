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
end



