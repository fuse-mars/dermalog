# unit - testing
require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do

  describe 'forgot_password' do
    let(:doctor) { Doctor.new({ "license" => "LICENSE", "email" => "doc@g.com", password: "secret", password_confirmation: "secret", state: "RN", name: "Robert" }) }
    let(:mail) { UserMailer.forgot_password(doctor) }
 
    it 'renders the subject' do
      expect(mail.subject).to eql('[Dermalog] Your forgotten password')
    end
 
    it 'renders the receiver email' do
      expect(mail.to).to eql([doctor.email])
    end
 
    it 'renders the sender email' do
      expect(mail.from).to eql(['sendbeat@gmail.com'])
    end
 
    it 'assigns @password' do
      expect(mail.body.encoded).to match(doctor.password)
    end

  end
end

# functional testing still needed, basically test the mailer.delivery
