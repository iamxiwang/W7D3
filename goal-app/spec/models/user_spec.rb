require 'rails_helper'

# Username is present
# Username is unique
# password is present

# model's validations, associations, and public methods


## PUBLIC METHODS

#S. P. I. R. E.


RSpec.describe User, type: :model do

  subject { User.create!(username: 'super_cool_coder', password: 'password') }

  context 'validates' do

    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:password) }
    it { should validate_uniqueness_of(:username) }

  end

  context 'has functioning spire methods' do
    # S
    it { expect(User.find_by_credentials("super_cool_coder","password").to eq(subject)) }
    # P
    it { expect(user.password).not_to eq("password")}
    # I
    it { expect(user.is_password?("password")).to eq(true)}
    it { expect(user.is_password?("psswrd")).to eq(false)}
    # R
    # testing that session token changes after running reset_session_token!
    it { expect(user.session_token ).to }


  end
end

password=(password)
  @password = password
  password_digest = BCrypt::Password.create(password)
end
