class CampingtripplanningtoolsController < ApplicationController
  before_action :set_campingtripplanningtool, only: [:show, :edit, :update, :destroy]

  # GET /campingtripplanningtools
  # GET /campingtripplanningtools.json
  def index
    @campingtripplanningtools = Campingtripplanningtool.all
    @meanmarker = 1
    @meanlat = 0;
    @meanlong = 0;
    @count = 0;
    @campingtripplanningtools.each do |user|
      @meanlat += user.latitude
      @meanlong+= user.longitude
      @count += 1
    end
    @meanlat = @meanlat / @count
    @meanlong = @meanlong / @count
    @hash = Gmaps4rails.build_markers(@campingtripplanningtools) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.title (user.fname + " " + user.lname)
    end
    @hash2 = Gmaps4rails.build_markers(@meanmarker) do |user, marker|
      marker.lat @meanlat
      marker.lng @meanlong
      marker.title "Central Location"
    end
  end

  # GET /campingtripplanningtools/1
  # GET /campingtripplanningtools/1.json
  def show
  end

  def list
    @campingtripplanningtools = Campingtripplanningtool.all
  end

  # GET /campingtripplanningtools/new
  def new
    @campingtripplanningtool = Campingtripplanningtool.new
  end

  # GET /campingtripplanningtools/1/edit
  def edit
  end

  # POST /campingtripplanningtools
  # POST /campingtripplanningtools.json
  def create
    @campingtripplanningtool = Campingtripplanningtool.new(campingtripplanningtool_params)

    respond_to do |format|
      if @campingtripplanningtool.save
        format.html { redirect_to @campingtripplanningtool, notice: 'Campingtripplanningtool was successfully created.' }
        format.json { render :show, status: :created, location: @campingtripplanningtool }
      else
        format.html { render :new }
        format.json { render json: @campingtripplanningtool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campingtripplanningtools/1
  # PATCH/PUT /campingtripplanningtools/1.json
  def update
    respond_to do |format|
      if @campingtripplanningtool.update(campingtripplanningtool_params)
        format.html { redirect_to @campingtripplanningtool, notice: 'Campingtripplanningtool was successfully updated.' }
        format.json { render :show, status: :ok, location: @campingtripplanningtool }
      else
        format.html { render :edit }
        format.json { render json: @campingtripplanningtool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campingtripplanningtools/1
  # DELETE /campingtripplanningtools/1.json
  def destroy
    @campingtripplanningtool.destroy
    respond_to do |format|
      format.html { redirect_to campingtripplanningtools_url, notice: 'Campingtripplanningtool was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campingtripplanningtool
      @campingtripplanningtool = Campingtripplanningtool.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campingtripplanningtool_params
      params.require(:campingtripplanningtool).permit(:fname, :lname, :city, :state, :latitude, :longitude, :gmaps)
    end
end
