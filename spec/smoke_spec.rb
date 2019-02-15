module SmokeSpec
  class GreetingPage
    include Watirsome

    URL = 'https://bwilczek.github.io/watir_pump_tutorial/greeter.html'

    text_field :name, id: 'name'
    button :set, id: 'set_name'
    div :greeting, id: 'greeting'

    text_field :name2, -> { region_element.text_field(id: 'name') }
    button :set2, -> { region_element.button(id: 'set_name') }
    div :greeting2, -> { region_element.div(id: 'greeting') }
  end

  RSpec.describe Watirsome do
    it 'supports settable elements' do
      GreetingPage.new(WatirHelper.browser).tap do |page|
        page.browser.goto page.class::URL

        page.name = 'Bob'
        expect(page.name).to eq 'Bob'
        expect(page.name_text_field).to be_a Watir::TextField
      end
    end
  end
end
