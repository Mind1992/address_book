require 'rspec'
require 'contact'

describe Contact do
  it 'lets you read name, phone number, email, mailing address' do
    test_contact = Contact.new('Mark', '8889086171', 'mark1971@gmail.com', '1250 SW 43th Ave')
    test_contact.name.should eq 'Mark'
    test_contact.phone.should eq '8889086171'
    test_contact.email.should eq 'mark1971@gmail.com'
    test_contact.address.should eq '1250 SW 43th Ave'
  end

  it 'gets added to when save is called on an instance' do
    test_contact = Contact.new('Mark', '8889086171', 'mark1971@gmail.com', '1250 SW 43th Ave')
    test_contact.add
    Contact.all.should eq [test_contact]
  end
end
