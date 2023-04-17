# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'sports/edit', type: :view do
  let(:sport) do
    Sport.create!(
      name: 'MyString',
      slug: 'MyString',
      description: 'MyText',
      active: false
    )
  end

  before(:each) do
    assign(:sport, sport)
  end

  it 'renders the edit sport form' do
    render

    assert_select 'form[action=?][method=?]', sport_path(sport), 'post' do
      assert_select 'input[name=?]', 'sport[name]'

      assert_select 'input[name=?]', 'sport[slug]'

      assert_select 'textarea[name=?]', 'sport[description]'

      assert_select 'input[name=?]', 'sport[active]'
    end
  end
end
