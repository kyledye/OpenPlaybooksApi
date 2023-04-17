# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'situation_sports/show', type: :view do
  before(:each) do
    assign(:situation_sport, SituationSport.create!(
                               situation: nil,
                               sport: nil
                             ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
