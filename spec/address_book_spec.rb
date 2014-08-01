require 'rspec'
require 'contact'

describe Contact do
  it 'lets you read name, phone number, email, mailing address' do
    test_contact = Contact.new('Mark', '(888) 9086-171', 'mark1971@gmail.com', '1250 SW 43th Ave')
    expect(test_contact.name).to eq 'Mark'
    expect(test_contact.phone).to eq '(888) 9086-171'
    expect(test_contact.email).to eq 'mark1971@gmail.com'
    expect(test_contact.address).to eq '1250 SW 43th Ave'
  end

describe '.all' do 
  it 'the contacts is empty at first' do  
    expect(Contact.all).to eq []
  end
end

  it 'gets added to when add is called on an instance' do
    test_contact = Contact.new('Mark', '(888) 9086-171', 'mark1971@gmail.com', '1250 SW 43th Ave')
    test_contact.add
    expect(Contact.all).to eq [test_contact]
  end
end




