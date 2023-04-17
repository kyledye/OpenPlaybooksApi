# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'sides/new', type: :view do
  before(:each) do
    assign(:side, Side.new(
                    name: 'MyString',
                    slug: 'MyString',
                    description: 'MyText',
                    active: false
                  ))
  end

  it 'renders new side form' do
    render

    assert_select 'form[action=?][method=?]', sides_path, 'post' do
      assert_select 'input[name=?]', 'side[name]'

      assert_select 'input[name=?]', 'side[slug]'

      assert_select 'textarea[name=?]', 'side[description]'

      assert_select 'input[name=?]', 'side[active]'
    end
  end
end
