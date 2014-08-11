require 'rspec'
require 'address'

describe Address do

  it 'lets you read address' do
    test_address = Address.new('1250 SW 43th Ave')
    expect(test_address.address).to eq '1250 SW 43th Ave'
  end

  it 'lets you update addresses' do 
    test_contact = Contact.new('Mark')
    test_address = Address.new('1250 SW 43th Ave')
    test_contact.add_address(test_address)
    test_contact.add
    test_contact.update_address('1250 SW 43th Ave', '2450 SW 22th Ave')
    expect(test_contact.addresses.first.address).to eq '2450 SW 22th Ave'
  end
end
