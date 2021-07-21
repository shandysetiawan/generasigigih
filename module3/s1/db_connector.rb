require 'mysql2'
require_relative "item"
require_relative "category"

def create_db_client
    client = Mysql2::Client.new(
        :host => "localhost",
        :username => "root",
        :password => "",
        :database => "food_oms_db"
    )
    client
end

# def get_all_items
#     client= create_db_client
#     items = client.query("select*from items")
# end

# puts (get_all_items)

# puts (get_all_items.each)

# items = get_all_items()
# puts(items.each)

# --------------- QUIZ ---------------------

# def get_all_categories
#     client= create_db_client
#     items = client.query("select*from categories")
# end

# categories = get_all_categories()
# puts(categories.each)

# def get_all_item_categories
#     client= create_db_client
#     items = client.query("SELECT items.name AS item_name, categories.name FROM items,categories;")
# end

# item_categories = get_all_item_categories()
# puts(item_categories.each)

# ------------------------------

def get_all_items
    client= create_db_client
    rawData = client.query("select*from items")
    items = Array.new
    rawData.each do |data|
    item = Item.new(data["id"],data["name"],data["price"])
    items.push(item)
    end
    items
end

def get_all_categories
    client= create_db_client
    rawData = client.query("select*from categories")
    categories = Array.new
    rawData.each do |data|
    category = Category.new(data['id'],data['name'])
    categories.push(category)
    end
    categories
end

def insert_item(name, price)
    client = create_db_client
    client.query("INSERT INTO items (name,price) VALUES ('#{name}', #{price})")
end

def insert_item_and_category(name, price, category_id)
    client = create_db_client
    client.query("INSERT INTO items (name,price) VALUES ('#{name}', #{price})")

    item_id = client.last_id
    client.query("INSERT INTO item_categories (item_id, category_id) VALUES ('#{item_id}', '#{category_id}')")
end

def get_all_items_with_categories
    client= create_db_client
    rawData = client.query("select items.id, items.name, items.price, categories.id AS category_id, categories.name AS categories_name 
        FROM items
        JOIN item_categories ON items.id = item_categories.item_id
        JOIN categories ON item_categories.category_id = categories.id")
    items = Array.new
    rawData.each do |data|
    category = Category.new(data['category_id'],data['category_name'])
    item = Item.new(data['id'], data['name'], data['price'], category)
    end
end

def get_detail_item_with_categories(item_id)
    client= create_db_client
    rawData = client.query("SELECT items.id, items.name, items.price, categories.id AS category_id, categories.name AS categories_name 
        FROM items
        JOIN item_categories ON items.id = item_categories.item_id
        JOIN categories ON item_categories.category_id = categories.id
        WHERE items.id = '#{item_id}';")
        puts rawData
    category = Category.new(rawData['category_id'],rawData['category_name'])
    item = Item.new(rawData['id'], rawData['name'], rawData['price'], category)
end

def update_item(name,price,category_id)
    client= create_db_client
    client.query("UPDATE items SET name=#{name}, price=#{price}, category_id='#{category_id}' WHERE id=#{item_id})"
end

def remove_item(item_id)
    client= create_db_client
    client.query("DELETE FROM items WHERE id=#{item_id})"
end

