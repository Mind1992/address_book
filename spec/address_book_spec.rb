require 'rspec'
require 'contact'
require 'phone'
require 'email'
require 'address'

describe Contact do
  before do
    Contact.clear
  end

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

  describe '.clear' do
    it 'returns an empty dictionary' do
      Contact.new('Mark', '(888) 9086-171', 'mark1971@gmail.com', '1250 SW 43th Ave').add
      Contact.clear
      expect(Contact.all).to eq []
    end
  end
end

describe Phone do

  it 'lets you read phone' do
    test_phone = Phone.new('(888) 9086-171')
    expect(test_phone.phone).to eq '(888) 9086-171'
  end
end

describe Email do

  it 'lets you read email' do
    test_email = Email.new('mark1971@gmail.com')
    expect(test_email.email).to eq 'mark1971@gmail.com'
  end
end

describe Address do

  it 'lets you read address' do
    test_address = Address.new('1250 SW 43th Ave')
    expect(test_address.address).to eq '1250 SW 43th Ave'
  end
end
