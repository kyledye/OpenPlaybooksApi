# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'side_sports/show', type: :view do
  before(:each) do
    assign(:side_sport, SideSport.create!(
                          side: nil,
                          sport: nil
                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
