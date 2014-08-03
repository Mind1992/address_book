class Address

  attr_accessor :address

  def initialize(address)
    @address = address
  end
end


my_address = Address.new("SW 1260")
p my_address.address
