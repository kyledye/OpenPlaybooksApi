# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'situations/show', type: :view do
  before(:each) do
    assign(:situation, Situation.create!(
                         name: 'Name',
                         slug: 'Slug',
                         description: 'MyText',
                         active: false
                       ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Slug/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
