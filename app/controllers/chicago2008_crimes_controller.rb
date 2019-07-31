class Chicago2008CrimesController < ApplicationController
  before_action :set_chicago2008_crime, only: [:show, :edit, :update, :destroy]

  # GET /chicago2008_crimes
  # GET /chicago2008_crimes.json
  def index
    @chicago2008_crimes = Chicago2008Crime.all
  end

  # GET /chicago2008_crimes/1
  # GET /chicago2008_crimes/1.json
  def show
  end

  # GET /chicago2008_crimes/new
  def new
    @chicago2008_crime = Chicago2008Crime.new
  end

  # GET /chicago2008_crimes/1/edit
  def edit
  end

  # POST /chicago2008_crimes
  # POST /chicago2008_crimes.json
  def create
    @chicago2008_crime = Chicago2008Crime.new(chicago2008_crime_params)

    respond_to do |format|
      if @chicago2008_crime.save
        format.html { redirect_to @chicago2008_crime, notice: 'Chicago2008 crime was successfully created.' }
        format.json { render :show, status: :created, location: @chicago2008_crime }
      else
        format.html { render :new }
        format.json { render json: @chicago2008_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chicago2008_crimes/1
  # PATCH/PUT /chicago2008_crimes/1.json
  def update
    respond_to do |format|
      if @chicago2008_crime.update(chicago2008_crime_params)
        format.html { redirect_to @chicago2008_crime, notice: 'Chicago2008 crime was successfully updated.' }
        format.json { render :show, status: :ok, location: @chicago2008_crime }
      else
        format.html { render :edit }
        format.json { render json: @chicago2008_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chicago2008_crimes/1
  # DELETE /chicago2008_crimes/1.json
  def destroy
    @chicago2008_crime.destroy
    respond_to do |format|
      format.html { redirect_to chicago2008_crimes_url, notice: 'Chicago2008 crime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chicago2008_crime
      @chicago2008_crime = Chicago2008Crime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chicago2008_crime_params
      params.require(:chicago2008_crime).permit(:p_key, :case_number, :date, :block, :iucr, :primary_type, :description, :location_description, :arrest, :domestic, :beat, :district, :ward, :community_area, :fbi_code, :x_coordinate, :y_coordinate, :year, :updated_on, :latitude, :longitude, :location)
    end
end
