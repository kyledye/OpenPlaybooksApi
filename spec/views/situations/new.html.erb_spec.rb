# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'situations/new', type: :view do
  before(:each) do
    assign(:situation, Situation.new(
                         name: 'MyString',
                         slug: 'MyString',
                         description: 'MyText',
                         active: false
                       ))
  end

  it 'renders new situation form' do
    render

    assert_select 'form[action=?][method=?]', situations_path, 'post' do
      assert_select 'input[name=?]', 'situation[name]'

      assert_select 'input[name=?]', 'situation[slug]'

      assert_select 'textarea[name=?]', 'situation[description]'

      assert_select 'input[name=?]', 'situation[active]'
    end
  end
end
