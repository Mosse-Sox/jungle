require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should not save if the name field is nil' do
      category = Category.create(name: 'Sample Category')
      product = Product.new(name: nil, price: 500, quantity: 50, category: category)

      
      expect{ product.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Name can't be blank")
    end

    it 'should not save if the price field is nil' do
      category = Category.create(name: 'Sample Category')
      product = Product.new(name: 'Bean', price: nil, quantity: 50, category: category)
      
      expect { product.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Price can't be blank")
    end

    it 'should not save if the category field is nil' do
      product = Product.new(name: 'Bean', price: 500, quantity: 50, category: nil)
      
      expect { product.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Category must exist, Category can't be blank")
    end

    it 'should not save if the quantity field is nil' do
      category = Category.create(name: 'Sample Category')
      product = Product.new(name: 'Bean', price: 500, quantity: nil, category: category)
      
      expect { product.save! }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Quantity can't be blank")
    end

    it 'should save if all fields are correctly filled' do
      category = Category.create(name: 'Sample Category')
      product = Product.new(name: 'Bean', price: 500, quantity: 50, category: category)
      
      expect { product.save! }.not_to raise_error
    end
  end
end
