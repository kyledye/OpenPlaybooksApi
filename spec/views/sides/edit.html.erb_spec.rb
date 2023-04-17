# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'sides/edit', type: :view do
  let(:side) do
    Side.create!(
      name: 'MyString',
      slug: 'MyString',
      description: 'MyText',
      active: false
    )
  end

  before(:each) do
    assign(:side, side)
  end

  it 'renders the edit side form' do
    render

    assert_select 'form[action=?][method=?]', side_path(side), 'post' do
      assert_select 'input[name=?]', 'side[name]'

      assert_select 'input[name=?]', 'side[slug]'

      assert_select 'textarea[name=?]', 'side[description]'

      assert_select 'input[name=?]', 'side[active]'
    end
  end
end
