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
    @phones.each do |phone|
      puts phone
    end
  end

end



