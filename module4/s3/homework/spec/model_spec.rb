require_relative '../mysql_connector.rb'
require '../models/category.rb'
require '../models/item.rb'

RSpec.describe Number do

    it '' do
        #given
    number = Number.new([0])
        #when
    increment = number.increment
        #then
    expect(increment).to eq([1])
    end

end