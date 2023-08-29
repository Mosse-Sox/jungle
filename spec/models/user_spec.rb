require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validation" do
    it 'should save successfully if all fields are filled out correctly' do
      user = User.create(first_name: 'Rowan', last_name: 'Beans', email: 'roguy99@gmail.ca', password: 'BeefBurrito')

      expect { user.save! }.not_to raise_error
    end

    it 'should not save if the first_name field is nil' do
      user = User.create(first_name: nil, last_name: 'Beans', email: 'roguy99@gmail.ca', password: 'BeefBurrito')
      
      expect { user.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: First name can't be blank")
    end

    it 'should not save if the last_name field is nil' do
      user = User.create(first_name: 'Rowan', last_name: nil, email: 'roguy99@gmail.ca', password: 'BeefBurrito')
      
      expect { user.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Last name can't be blank")
    end

    it 'should not save if the email field is nil' do
      user = User.create(first_name: 'Rowan', last_name: 'Beans', email: nil, password: 'BeefBurrito')
      
      expect { user.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Email can't be blank")
    end

    it 'should not save if the password field is nil' do
      user = User.create(first_name: 'Rowan', last_name: 'Beans', email: 'Roguy99@gmail.ca', password: nil)
      
      expect { user.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Password can't be blank, Password can't be blank, Password is too short (minimum is 6 characters)")
    end
  end
end
