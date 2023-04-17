# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'situation_sports/index', type: :view do
  before(:each) do
    assign(:situation_sports, [
             SituationSport.create!(
               situation: nil,
               sport: nil
             ),
             SituationSport.create!(
               situation: nil,
               sport: nil
             )
           ])
  end

  it 'renders a list of situation_sports' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
