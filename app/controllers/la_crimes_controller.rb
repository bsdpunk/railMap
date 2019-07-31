class LaCrimesController < ApplicationController
  before_action :set_la_crime, only: [:show, :edit, :update, :destroy]

  # GET /la_crimes
  # GET /la_crimes.json
  def index
    @la_crimes = LaCrime.all
  end

  # GET /la_crimes/1
  # GET /la_crimes/1.json
  def show
  end

  # GET /la_crimes/new
  def new
    @la_crime = LaCrime.new
  end

  # GET /la_crimes/1/edit
  def edit
  end

  # POST /la_crimes
  # POST /la_crimes.json
  def create
    @la_crime = LaCrime.new(la_crime_params)

    respond_to do |format|
      if @la_crime.save
        format.html { redirect_to @la_crime, notice: 'La crime was successfully created.' }
        format.json { render :show, status: :created, location: @la_crime }
      else
        format.html { render :new }
        format.json { render json: @la_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /la_crimes/1
  # PATCH/PUT /la_crimes/1.json
  def update
    respond_to do |format|
      if @la_crime.update(la_crime_params)
        format.html { redirect_to @la_crime, notice: 'La crime was successfully updated.' }
        format.json { render :show, status: :ok, location: @la_crime }
      else
        format.html { render :edit }
        format.json { render json: @la_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /la_crimes/1
  # DELETE /la_crimes/1.json
  def destroy
    @la_crime.destroy
    respond_to do |format|
      format.html { redirect_to la_crimes_url, notice: 'La crime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_la_crime
      @la_crime = LaCrime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def la_crime_params
      params.require(:la_crime).permit(:dr_number, :date_reported, :date_occurred, :time_occurred, :area_id, :area_name, :reporting_district, :crime_code, :crime_code_description, :mo_codes, :victim_age, :victim_sex, :victim_descent, :premise_code, :premise_description, :weapon_used_code, :weapon_description, :status_code, :status_description, :crime_code1, :crime_code2, :crime_code3, :crime_code4, :address, :cross_street, :location)
    end
end
