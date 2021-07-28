require_relative '../src/number'

RSpec.describe Number do

    it 'increment number array of 1' do
        #given
    number = Number.new([0])
        #when
    increment = number.increment
        #then
    expect(increment).to eq([1])
    end


    it 'increment number array of 2' do
        #given
    number = Number.new([1,2])
        #when
    increment = number.increment
        #then
    expect(increment).to eq([1,3])
    end

    it 'increment number array of 3' do
        #given
    number = Number.new([1,2,3])
        #when
    increment = number.increment
        #then
    expect(increment).to eq([1,2,4])
    end


    it 'increment number array of 4' do
        #given
    number = Number.new([1,2,5,4])
        #when
    increment = number.increment
        #then
    expect(increment).to eq([1,2,5,5])
    end

end