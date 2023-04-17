# frozen_string_literal: true

class SideSportsController < ApplicationController
  before_action :set_side_sport, only: %i[show edit update destroy]

  # GET /side_sports or /side_sports.json
  def index
    @side_sports = SideSport.all
  end

  # GET /side_sports/1 or /side_sports/1.json
  def show; end

  # GET /side_sports/new
  def new
    @side_sport = SideSport.new
  end

  # GET /side_sports/1/edit
  def edit; end

  # POST /side_sports or /side_sports.json
  def create
    @side_sport = SideSport.new(side_sport_params)

    respond_to do |format|
      if @side_sport.save
        format.html { redirect_to side_sport_url(@side_sport), notice: 'Side sport was successfully created.' }
        format.json { render :show, status: :created, location: @side_sport }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @side_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /side_sports/1 or /side_sports/1.json
  def update
    respond_to do |format|
      if @side_sport.update(side_sport_params)
        format.html { redirect_to side_sport_url(@side_sport), notice: 'Side sport was successfully updated.' }
        format.json { render :show, status: :ok, location: @side_sport }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @side_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /side_sports/1 or /side_sports/1.json
  def destroy
    @side_sport.destroy

    respond_to do |format|
      format.html { redirect_to side_sports_url, notice: 'Side sport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_side_sport
    @side_sport = SideSport.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def side_sport_params
    params.require(:side_sport).permit(:side_id, :sport_id)
  end
end
