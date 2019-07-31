class LatCrimesController < ApplicationController
  before_action :set_lat_crime, only: [:show, :edit, :update, :destroy]

  # GET /lat_crimes
  # GET /lat_crimes.json
  def index
    @lat_crimes = LatCrime.paginate(page: params[:page])
  end

  # GET /lat_crimes/1
  # GET /lat_crimes/1.json
  def show
  end

  # GET /lat_crimes/new
  def new
    @lat_crime = LatCrime.new
  end

  # GET /lat_crimes/1/edit
  def edit
  end

  # POST /lat_crimes
  # POST /lat_crimes.json
  def create
    @lat_crime = LatCrime.new(lat_crime_params)

    respond_to do |format|
      if @lat_crime.save
        format.html { redirect_to @lat_crime, notice: 'Lat crime was successfully created.' }
        format.json { render :show, status: :created, location: @lat_crime }
      else
        format.html { render :new }
        format.json { render json: @lat_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lat_crimes/1
  # PATCH/PUT /lat_crimes/1.json
  def update
    respond_to do |format|
      if @lat_crime.update(lat_crime_params)
        format.html { redirect_to @lat_crime, notice: 'Lat crime was successfully updated.' }
        format.json { render :show, status: :ok, location: @lat_crime }
      else
        format.html { render :edit }
        format.json { render json: @lat_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lat_crimes/1
  # DELETE /lat_crimes/1.json
  def destroy
    @lat_crime.destroy
    respond_to do |format|
      format.html { redirect_to lat_crimes_url, notice: 'Lat crime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lat_crime
      @lat_crime = LatCrime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lat_crime_params
      params.require(:lat_crime).permit( :dr_number, :date_reported, :date_occurred, :time_occurred, :area_id, :area_name, :reporting_district, :crime_code, :crime_code_description, :mo_codes, :victim_age, :victim_sex, :victim_descent, :premise_code, :premise_description, :weapon_used_code, :weapon_description, :status_code, :status_description, :crime_code1, :crime_code2, :crime_code3, :crime_code4, :address, :cross_street, :lat, :lon)
    end
end
