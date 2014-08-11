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
    test_contact = Contact.new('Mark')
    expect(test_contact.name).to eq 'Mark'
    expect(test_contact.phones).to eq []
    expect(test_contact.emails).to eq []
    expect(test_contact.addresses).to eq []
  end

describe '.all' do
  it 'the contacts is empty at first' do
    expect(Contact.all).to eq []
  end
end

  it 'gets added to when add is called on an instance' do
    test_contact = Contact.new('Mark')
    test_contact.add
    expect(Contact.all).to eq [test_contact]
  end

  describe '.clear' do
    it 'returns an empty array' do
      Contact.new('Mark').add
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

  it 'lets you update phone numbers' do 
    test_contact = Contact.new('Mark')
    test_phone = Phone.new('(888) 9086-171')
    test_contact.add_phone(test_phone)
    test_contact.add
    test_contact.update_phone('(888) 9086-171', '(503) 5482-321')
    expect(test_contact.phones.first.phone).to eq '(503) 5482-321'
  end
end

describe Email do

  it 'lets you read email' do
    test_email = Email.new('mark1971@gmail.com')
    expect(test_email.email).to eq 'mark1971@gmail.com'
  end

  it 'lets you update emails' do 
    test_contact = Contact.new('Mark')
    test_email = Email.new('serg@gamil.com')
    test_contact.add_email(test_email)
    test_contact.add
    test_contact.update_email('serg@gamil.com', 'serg@gamil92.com')
    expect(test_contact.emails.first.email).to eq 'serg@gamil92.com'
  end
end

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
