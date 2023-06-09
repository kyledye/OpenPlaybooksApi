# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/situations', type: :request do
  # This should return the minimal set of attributes required to create a valid
  # Situation. As you add validations to Situation, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Situation.create! valid_attributes
      get situations_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      situation = Situation.create! valid_attributes
      get situation_url(situation)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_situation_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      situation = Situation.create! valid_attributes
      get edit_situation_url(situation)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Situation' do
        expect do
          post situations_url, params: { situation: valid_attributes }
        end.to change(Situation, :count).by(1)
      end

      it 'redirects to the created situation' do
        post situations_url, params: { situation: valid_attributes }
        expect(response).to redirect_to(situation_url(Situation.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Situation' do
        expect do
          post situations_url, params: { situation: invalid_attributes }
        end.to change(Situation, :count).by(0)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post situations_url, params: { situation: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested situation' do
        situation = Situation.create! valid_attributes
        patch situation_url(situation), params: { situation: new_attributes }
        situation.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the situation' do
        situation = Situation.create! valid_attributes
        patch situation_url(situation), params: { situation: new_attributes }
        situation.reload
        expect(response).to redirect_to(situation_url(situation))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        situation = Situation.create! valid_attributes
        patch situation_url(situation), params: { situation: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested situation' do
      situation = Situation.create! valid_attributes
      expect do
        delete situation_url(situation)
      end.to change(Situation, :count).by(-1)
    end

    it 'redirects to the situations list' do
      situation = Situation.create! valid_attributes
      delete situation_url(situation)
      expect(response).to redirect_to(situations_url)
    end
  end
end
