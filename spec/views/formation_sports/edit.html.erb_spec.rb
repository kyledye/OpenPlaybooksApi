# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'formation_sports/edit', type: :view do
  let(:formation_sport) do
    FormationSport.create!(
      formation: nil,
      sport: nil
    )
  end

  before(:each) do
    assign(:formation_sport, formation_sport)
  end

  it 'renders the edit formation_sport form' do
    render

    assert_select 'form[action=?][method=?]', formation_sport_path(formation_sport), 'post' do
      assert_select 'input[name=?]', 'formation_sport[formation_id]'

      assert_select 'input[name=?]', 'formation_sport[sport_id]'
    end
  end
end
