# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'formations/edit', type: :view do
  let(:formation) do
    Formation.create!(
      name: 'MyString',
      slug: 'MyString',
      description: 'MyText',
      active: false
    )
  end

  before(:each) do
    assign(:formation, formation)
  end

  it 'renders the edit formation form' do
    render

    assert_select 'form[action=?][method=?]', formation_path(formation), 'post' do
      assert_select 'input[name=?]', 'formation[name]'

      assert_select 'input[name=?]', 'formation[slug]'

      assert_select 'textarea[name=?]', 'formation[description]'

      assert_select 'input[name=?]', 'formation[active]'
    end
  end
end
