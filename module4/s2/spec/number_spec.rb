require_relative '../src/number'

RSpec.describe Number do

    it 'increment number' do
        #given
    number = Number.new([0])
        #when
    increment = number.increment

        #then
    expect(increment).to eq([1])
    end

end