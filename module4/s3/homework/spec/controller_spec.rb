require_relative '../mysql_connector.rb'
require '../controllers/category_controller.rb'
require '../controllers/item_controller.rb'

RSpec.describe Item do
    context 'input valid item'
    it 'check item controller' do
        #given
    item = Item.new([0])
        #when
    increment = number.increment
        #then
    expect(increment).to eq([1])
    end


end