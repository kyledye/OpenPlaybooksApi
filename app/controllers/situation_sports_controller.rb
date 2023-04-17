# frozen_string_literal: true

class SituationSportsController < ApplicationController
  before_action :set_situation_sport, only: %i[show edit update destroy]

  # GET /situation_sports or /situation_sports.json
  def index
    @situation_sports = SituationSport.all
  end

  # GET /situation_sports/1 or /situation_sports/1.json
  def show; end

  # GET /situation_sports/new
  def new
    @situation_sport = SituationSport.new
  end

  # GET /situation_sports/1/edit
  def edit; end

  # POST /situation_sports or /situation_sports.json
  def create
    @situation_sport = SituationSport.new(situation_sport_params)

    respond_to do |format|
      if @situation_sport.save
        format.html do
          redirect_to situation_sport_url(@situation_sport), notice: 'Situation sport was successfully created.'
        end
        format.json { render :show, status: :created, location: @situation_sport }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @situation_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /situation_sports/1 or /situation_sports/1.json
  def update
    respond_to do |format|
      if @situation_sport.update(situation_sport_params)
        format.html do
          redirect_to situation_sport_url(@situation_sport), notice: 'Situation sport was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @situation_sport }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @situation_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /situation_sports/1 or /situation_sports/1.json
  def destroy
    @situation_sport.destroy

    respond_to do |format|
      format.html { redirect_to situation_sports_url, notice: 'Situation sport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_situation_sport
    @situation_sport = SituationSport.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def situation_sport_params
    params.require(:situation_sport).permit(:situation_id, :sport_id)
  end
end
