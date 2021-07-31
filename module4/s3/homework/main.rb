require 'sinatra'
require './controllers/item_controller'

get path '/items' do
  controller = ItemController.new
  controller.show_items
end

post path '/items' do
    controller = ItemController.new
    controller.create_item
    redirect '/'
end

put path '/items' do
    controller = ItemController.new
    controller.update_item
    redirect '/'
end

delete path '/items' do
    controller = ItemController.new
    controller.remove_item
    redirect '/'
end
