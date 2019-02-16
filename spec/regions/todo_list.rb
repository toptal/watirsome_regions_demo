require_relative './todo_list_item'

class TodoList
  include Watirsome

  div :title, role: 'title'
  has_many :items, in: {tag_name: 'ul'}, class: TodoListItem, each: {tag_name: 'li'}
end
