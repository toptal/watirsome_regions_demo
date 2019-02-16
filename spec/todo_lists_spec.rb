require_relative './pages/todo_lists_page'

RSpec.describe TodoListsPage do
  it 'has multiple instances of the same region' do
    TodoListsPage.new(WatirHelper.browser).tap do |page|
      page.browser.goto page.class::URL

      expect(page.home_list.title).to eq 'Home'
      expect(page.home_list.items.count).to eq 3
      expect(page.home_list.items.first.name).to eq 'Dishes'

      expect(page.work_list.items.first.name).to eq 'Review the PR-1234'

      expect(page.todo_lists['Groceries'].items[0].name).to eq 'Bread'
    end
  end
end
