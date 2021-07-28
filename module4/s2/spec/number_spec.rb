require_relative '../src/number'

RSpec.describe Number do

    it 'increment number' do
        #given
    number = Number.new([1,2,3])
        #when
    increment = number.increment
        #then
    expect(increment).to eq([1,2,3,4])
    end

end