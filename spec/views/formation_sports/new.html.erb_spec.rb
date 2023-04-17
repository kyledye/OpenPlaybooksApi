# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'formation_sports/new', type: :view do
  before(:each) do
    assign(:formation_sport, FormationSport.new(
                               formation: nil,
                               sport: nil
                             ))
  end

  it 'renders new formation_sport form' do
    render

    assert_select 'form[action=?][method=?]', formation_sports_path, 'post' do
      assert_select 'input[name=?]', 'formation_sport[formation_id]'

      assert_select 'input[name=?]', 'formation_sport[sport_id]'
    end
  end
end
