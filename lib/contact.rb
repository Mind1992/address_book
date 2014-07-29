class Contact
  attr_reader :name, :phone, :email, :address
  @@contacts = []

  def initialize(name, phone, email, address)
    @name = name
    @phone = phone
    @email = email
    @address = address
  end

  def Contact.all
    @@contacts
  end

  def add
    @@contacts << self
  end

end
