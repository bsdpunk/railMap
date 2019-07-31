class ChicagoCrimesController < ApplicationController
  before_action :set_chicago_crime, only: [:show, :edit, :update, :destroy]

  # GET /chicago_crimes
  # GET /chicago_crimes.json
  def index
    @chicago_crimes = ChicagoCrime.all
  end

  # GET /chicago_crimes/1
  # GET /chicago_crimes/1.json
  def show
  end

  # GET /chicago_crimes/new
  def new
    @chicago_crime = ChicagoCrime.new
  end

  # GET /chicago_crimes/1/edit
  def edit
  end

  # POST /chicago_crimes
  # POST /chicago_crimes.json
  def create
    @chicago_crime = ChicagoCrime.new(chicago_crime_params)

    respond_to do |format|
      if @chicago_crime.save
        format.html { redirect_to @chicago_crime, notice: 'Chicago crime was successfully created.' }
        format.json { render :show, status: :created, location: @chicago_crime }
      else
        format.html { render :new }
        format.json { render json: @chicago_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chicago_crimes/1
  # PATCH/PUT /chicago_crimes/1.json
  def update
    respond_to do |format|
      if @chicago_crime.update(chicago_crime_params)
        format.html { redirect_to @chicago_crime, notice: 'Chicago crime was successfully updated.' }
        format.json { render :show, status: :ok, location: @chicago_crime }
      else
        format.html { render :edit }
        format.json { render json: @chicago_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chicago_crimes/1
  # DELETE /chicago_crimes/1.json
  def destroy
    @chicago_crime.destroy
    respond_to do |format|
      format.html { redirect_to chicago_crimes_url, notice: 'Chicago crime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chicago_crime
      @chicago_crime = ChicagoCrime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chicago_crime_params
      params.require(:chicago_crime).permit(:p_key, :case_number, :date, :block, :iucr, :primary_type, :description, :location_description, :arrest, :domestic, :beat, :district, :ward, :community_area, :fbi_code, :x_coordinate, :y_coordinate, :year, :updated_on, :latitude, :longitude, :location)
    end
end
