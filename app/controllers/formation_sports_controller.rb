# frozen_string_literal: true

class FormationSportsController < ApplicationController
  before_action :set_formation_sport, only: %i[show edit update destroy]

  # GET /formation_sports or /formation_sports.json
  def index
    @formation_sports = FormationSport.all
  end

  # GET /formation_sports/1 or /formation_sports/1.json
  def show; end

  # GET /formation_sports/new
  def new
    @formation_sport = FormationSport.new
  end

  # GET /formation_sports/1/edit
  def edit; end

  # POST /formation_sports or /formation_sports.json
  def create
    @formation_sport = FormationSport.new(formation_sport_params)

    respond_to do |format|
      if @formation_sport.save
        format.html do
          redirect_to formation_sport_url(@formation_sport), notice: 'Formation sport was successfully created.'
        end
        format.json { render :show, status: :created, location: @formation_sport }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @formation_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formation_sports/1 or /formation_sports/1.json
  def update
    respond_to do |format|
      if @formation_sport.update(formation_sport_params)
        format.html do
          redirect_to formation_sport_url(@formation_sport), notice: 'Formation sport was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @formation_sport }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @formation_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formation_sports/1 or /formation_sports/1.json
  def destroy
    @formation_sport.destroy

    respond_to do |format|
      format.html { redirect_to formation_sports_url, notice: 'Formation sport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_formation_sport
    @formation_sport = FormationSport.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def formation_sport_params
    params.require(:formation_sport).permit(:formation_id, :sport_id)
  end
end
