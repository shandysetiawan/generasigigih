require './models/item.rb'


class item_controller

    def show_items
        item = Item.
        renderer = ERB.new(File.read('./views/index.rb'))
        renderer.result(binding)
    end

    def create_item(params)
    end

    def update_item(params)
    end

    def remove_item(params)
    end
end