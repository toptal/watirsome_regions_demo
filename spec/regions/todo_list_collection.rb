class TodoListCollection
  include Watirsome

  def [](title)
    find { |l| l.title == title }
  end
end
