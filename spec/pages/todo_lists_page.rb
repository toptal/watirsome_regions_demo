require_relative '../regions/todo_list'
require_relative '../regions/todo_list_collection'

class TodoListsPage
  include Watirsome

  URL = 'https://bwilczek.github.io/watir_pump_tutorial/todo_lists.html'

  has_one :home_list, class: TodoList, in: {id: 'todos_home'}
  has_one :work_list, class: TodoList, in: {id: 'todos_work'}

  has_many :todo_lists, class: TodoList, through: TodoListCollection, each: {role: 'todo_list'}
end
