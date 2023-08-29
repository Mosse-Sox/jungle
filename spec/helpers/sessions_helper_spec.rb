require 'rails_helper'

RSpec.describe SessionsHelper, type: :helper do
  let(:user) {create(:user)}

  describe '#log_in' do
    it 'logs in the user by setting the session[:user_id]' do
      user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: 'beefburrito'
      )
      user.save
      helper.log_in(user)
      expect(session[:user_id]).to eq(user.id)
    end
  end

  describe '#log_out' do
    it 'logs the user out by deleting session[:user_id]' do
      user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: 'beefburrito'
      )
      user.save
      helper.log_out
      expect(session[:user_id]).to be_nil
    end
  end

  describe '#logged_in?' do
    context 'when a user is logged in' do
      user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: 'beefburrito'
      )
      user.save
      before { session[:user_id] = user.id }

      it 'returns true' do
        expect(helper.logged_in?).to be(true)
      end
    end

    context 'when no user is logged in' do
      it 'returns false' do
        expect(helper.logged_in?).to be(false)
      end
    end
  end

  
  describe '#current_user' do
    context 'when a user is logged in' do
      user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        password: 'beefburrito'
      )
      user.save
      before { session[:user_id] = user.id }

      it 'returns the currently logged-in user' do
        expect(helper.current_user).to eq(user)
      end
    end

    context 'when no user is logged in' do
      it 'returns nil' do
        expect(helper.current_user).to be_nil
      end
    end
  end
end
