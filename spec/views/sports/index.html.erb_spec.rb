# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'sports/index', type: :view do
  before(:each) do
    assign(:sports, [
             Sport.create!(
               name: 'Name',
               slug: 'Slug',
               description: 'MyText',
               active: false
             ),
             Sport.create!(
               name: 'Name',
               slug: 'Slug',
               description: 'MyText',
               active: false
             )
           ])
  end

  it 'renders a list of sports' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Slug'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('MyText'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
  end
end
