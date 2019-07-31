class DenverCrimesController < ApplicationController
  before_action :set_denver_crime, only: [:show, :edit, :update, :destroy]

  # GET /denver_crimes
  # GET /denver_crimes.json
  def index
    @denver_crimes = DenverCrime.paginate(page: params[:page])
  end
  def map
    @loc_crimes = PhillyCrime.where.not(geolat: 0).limit(900)
  end

  # GET /denver_crimes/1
  # GET /denver_crimes/1.json
  def show
  end

  # GET /denver_crimes/new
  def new
    @denver_crime = DenverCrime.new
  end

  # GET /denver_crimes/1/edit
  def edit
  end

  # POST /denver_crimes
  # POST /denver_crimes.json
  def create
    @denver_crime = DenverCrime.new(denver_crime_params)

    respond_to do |format|
      if @denver_crime.save
        format.html { redirect_to @denver_crime, notice: 'Denver crime was successfully created.' }
        format.json { render :show, status: :created, location: @denver_crime }
      else
        format.html { render :new }
        format.json { render json: @denver_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /denver_crimes/1
  # PATCH/PUT /denver_crimes/1.json
  def update
    respond_to do |format|
      if @denver_crime.update(denver_crime_params)
        format.html { redirect_to @denver_crime, notice: 'Denver crime was successfully updated.' }
        format.json { render :show, status: :ok, location: @denver_crime }
      else
        format.html { render :edit }
        format.json { render json: @denver_crime.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /denver_crimes/1
  # DELETE /denver_crimes/1.json
  def destroy
    @denver_crime.destroy
    respond_to do |format|
      format.html { redirect_to denver_crimes_url, notice: 'Denver crime was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_denver_crime
      @denver_crime = DenverCrime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def denver_crime_params
      params.require(:denver_crime).permit(:inc_id_ent_id, :offense_id, :offensecode, :offensecodeextension, :offensetype_id, :offensecategory_id, :firstoccurrencedate, :lastoccurrencedate, :reporteddate, :inc_id_entaddress, :geox, :geoy, :geolon, :geolat, :district_id, :precinct_id, :neighborhood_id, :iscrime, :istraffic)
    end
end
