require 'sinatra'
require "sinatra/reloader" if development?
require './db_connector'

get '/' do
    items = get_all_items
    erb :index, locals: {
        items: items
        }
end


get '/items/create' do
    categories = get_all_categories
   erb :create, locals: {
    categories: categories
    }
end

post '/items/create' do
    name = params['name']
    price = params['price']
    category_id = params['category_id']
    # insert_item(name,price)
    insert_item_and_category(name,price,category_id)
    redirect '/'
end

get '/items/:item_id/detail' do
    item_id = params['item_id']
    item_detail = get_detail_item_with_categories(item_id)
   erb :detail, locals: {
    item_detail: item_detail
    }
end

get '/items/:id/edit' do
    item_id = params['item_id']
    update_item(item_id)
   erb :edit, locals: {
    item: item
    }
end

put '/items/:item_id/edit' do
    item_id = params['item_id']
    update_item(item_id)
    redirect '/'
end

delete '/items/:item_id/remove' do
    item_id = params['item_id']
    delete_item(item_id)
    redirect '/'
end
