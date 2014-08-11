require 'rspec'
require 'phone'

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