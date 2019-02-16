class TodoListItem
  include Watirsome

  span :name, role: 'name'
  a :remove, role: 'rm'
end
