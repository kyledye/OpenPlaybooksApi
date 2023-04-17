# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'formations/new', type: :view do
  before(:each) do
    assign(:formation, Formation.new(
                         name: 'MyString',
                         slug: 'MyString',
                         description: 'MyText',
                         active: false
                       ))
  end

  it 'renders new formation form' do
    render

    assert_select 'form[action=?][method=?]', formations_path, 'post' do
      assert_select 'input[name=?]', 'formation[name]'

      assert_select 'input[name=?]', 'formation[slug]'

      assert_select 'textarea[name=?]', 'formation[description]'

      assert_select 'input[name=?]', 'formation[active]'
    end
  end
end
