require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should not save if the name field is nil' do
      category = Category.create(name: 'Sample Category')
      product = Product.new(name: nil, price: 500, quantity: 50, category: category)

      
      expect{ product.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank")
    end
  end
end
