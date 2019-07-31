class PhillyCrimesController < ApplicationController
  before_action :set_philly_crime, only: [:show, :edit, :update, :destroy]

  # GET /philly_crimes
  # GET /philly_crimes.json
  def index
    @philly_crimes = PhillyCrime.paginate(page: params[:page])
  end
  def map
    @loc_crimes = PhillyCrime.where.not(lat: 0).limit(900)
    @den_crimes = DenverCrime.where("geolat > ?", 30).limit(900)
    @lat_crimes = LatCrime.where("lat > ?", 25).limit(900)
    @chi_crimes = ChicagoCrime.where("latitude > ?", 25).limit(900)
  end
  # GET /philly_crimes/1
  # GET /philly_crimes/1.json
  def show
  end

  # GET /philly_crimes/new
  def new
    @philly_crime = PhillyCrime.new
  end

  # GET /philly_crimes/1/edit
  def edit
  end

  # POST /philly_crimes
  # POST /philly_crimes.json
  def create
    @philly_crime = PhillyCrime.new(philly_crime_params)

    respond_to do |format|
      if @philly_crime.save
        format.html { redirect_to @philly_crime, notice: 'Philly crime was successfully created.' }
        format.json { render :show, status: :created, location: @philly_crime }
      else
        format.html { render :new }
        format.json { render json: @philly_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /philly_crimes/1
  # PATCH/PUT /philly_crimes/1.json
  def update
    respond_to do |format|
      if @philly_crime.update(philly_crime_params)
        format.html { redirect_to @philly_crime, notice: 'Philly crime was successfully updated.' }
        format.json { render :show, status: :ok, location: @philly_crime }
      else
        format.html { render :edit }
        format.json { render json: @philly_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /philly_crimes/1
  # DELETE /philly_crimes/1.json
  def destroy
    @philly_crime.destroy
    respond_to do |format|
      format.html { redirect_to philly_crimes_url, notice: 'Philly crime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_philly_crime
      @philly_crime = PhillyCrime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def philly_crime_params
      params.require(:philly_crime).permit(:dc_dist, :psa, :dispatch_date_time, :dispatch_date, :dispatch_time, :hour, :dc_key, :location_block, :ucr_general, :text_general_code, :police_districts, :month, :lon, :lat)
    end
end
