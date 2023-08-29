require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validation" do
    it 'should save successfully if all fields are filled out correctly' do
      user = User.create(first_name: 'Rowan', last_name: 'Beans', email: 'roguy99@gmail.ca', password: 'BeefBurrito')

      expect { user.save! }.not_to raise_error
    end
  end
end
