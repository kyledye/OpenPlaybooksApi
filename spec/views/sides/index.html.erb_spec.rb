# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'sides/index', type: :view do
  before(:each) do
    assign(:sides, [
             Side.create!(
               name: 'Name',
               slug: 'Slug',
               description: 'MyText',
               active: false
             ),
             Side.create!(
               name: 'Name',
               slug: 'Slug',
               description: 'MyText',
               active: false
             )
           ])
  end

  it 'renders a list of sides' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Slug'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
