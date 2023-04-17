# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'situations/edit', type: :view do
  let(:situation) do
    Situation.create!(
      name: 'MyString',
      slug: 'MyString',
      description: 'MyText',
      active: false
    )
  end

  before(:each) do
    assign(:situation, situation)
  end

  it 'renders the edit situation form' do
    render

    assert_select 'form[action=?][method=?]', situation_path(situation), 'post' do
      assert_select 'input[name=?]', 'situation[name]'

      assert_select 'input[name=?]', 'situation[slug]'

      assert_select 'textarea[name=?]', 'situation[description]'

      assert_select 'input[name=?]', 'situation[active]'
    end
  end
end
