# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'formation_sports/index', type: :view do
  before(:each) do
    assign(:formation_sports, [
             FormationSport.create!(
               formation: nil,
               sport: nil
             ),
             FormationSport.create!(
               formation: nil,
               sport: nil
             )
           ])
  end

  it 'renders a list of formation_sports' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
