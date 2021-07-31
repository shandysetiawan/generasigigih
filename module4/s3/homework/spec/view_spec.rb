require_relative '../mysql_connector.rb'
require '../models/item.rb'

RSpec.describe Item do
    context 'render correct view' do
        it 'render view' do
            #given
        item = Item.new
            #when
    expected_view = ERB.new(File.read("./views/index.erb"))
            #then
        expect(response).to eq(expected_view)
        end
    end

end