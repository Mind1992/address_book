require 'rspec'
require 'email'

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