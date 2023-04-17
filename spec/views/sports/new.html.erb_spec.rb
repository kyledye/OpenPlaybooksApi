# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'sports/new', type: :view do
  before(:each) do
    assign(:sport, Sport.new(
                     name: 'MyString',
                     slug: 'MyString',
                     description: 'MyText',
                     active: false
                   ))
  end

  it 'renders new sport form' do
    render

    assert_select 'form[action=?][method=?]', sports_path, 'post' do
      assert_select 'input[name=?]', 'sport[name]'

      assert_select 'input[name=?]', 'sport[slug]'

      assert_select 'textarea[name=?]', 'sport[description]'

      assert_select 'input[name=?]', 'sport[active]'
    end
  end
end
