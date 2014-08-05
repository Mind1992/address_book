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

  def show_phones
    array = []
    @phones.each do |phone|
      array << phone.phone
    end
   array
  end

  def show_emails
    array = []
    @emails.each do |email|
      array << email.email
    end
   array
  end

  def show_addresses
    array = []
    @addresses.each do |address|
      array << address.address
    end
   array
  end
end



