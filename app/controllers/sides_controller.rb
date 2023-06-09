# frozen_string_literal: true

class SidesController < ApplicationController
  before_action :set_side, only: %i[show edit update destroy]

  # GET /sides or /sides.json
  def index
    @sides = Side.all
  end

  # GET /sides/1 or /sides/1.json
  def show; end

  # GET /sides/new
  def new
    @side = Side.new
  end

  # GET /sides/1/edit
  def edit; end

  # POST /sides or /sides.json
  def create
    @side = Side.new(side_params)

    respond_to do |format|
      if @side.save
        format.html { redirect_to side_url(@side), notice: 'Side was successfully created.' }
        format.json { render :show, status: :created, location: @side }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @side.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sides/1 or /sides/1.json
  def update
    respond_to do |format|
      if @side.update(side_params)
        format.html { redirect_to side_url(@side), notice: 'Side was successfully updated.' }
        format.json { render :show, status: :ok, location: @side }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @side.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sides/1 or /sides/1.json
  def destroy
    @side.destroy

    respond_to do |format|
      format.html { redirect_to sides_url, notice: 'Side was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_side
    @side = Side.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def side_params
    params.require(:side).permit(:name, :slug, :description, :active)
  end
end
