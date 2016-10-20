class TodoList
  def initialize(input_list)
    @list = input_list
  end
  def get_items
    @list
  end
  def add_item(item_to_add)
    @list << item_to_add
  end
  def delete_item(item_to_delete)
    n = @list.index(item_to_delete)
    @list.delete_at(n)
  end
  def retrieve_item_by_index(x)
    @list.fetch(x)
  end
end
