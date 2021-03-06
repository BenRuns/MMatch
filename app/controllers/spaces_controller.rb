class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update, :destroy]

  # GET /spaces
  # GET /spaces.json
  def index
    @spaces = Space.all
  end

  # GET /spaces/search
  def search
    @params = params
    laser_cutter = params[:laser_cutter].present?
    three_d_printer = params[:three_d_printer].present?
    cnc_router = params[:cnc_router].present?
    sewing_maching = params[:sewing_maching].present?
    microcontroller_library = params[:microcontroller_library].present?
    city = params[:city] if !params[:city].blank?
    state = params[:state] if !params[:state].blank?
    @spaces = Space.all
    @spaces = @spaces.where(laser_cutter: laser_cutter) if laser_cutter
    @spaces = @spaces.where(three_d_printer: three_d_printer) if three_d_printer
    @spaces = @spaces.where(cnc_router: cnc_router) if cnc_router
    @spaces = @spaces.where(sewing_maching: sewing_maching) if sewing_maching
    @spaces = @spaces.where(microcontroller_library: microcontroller_library) if microcontroller_library
    @spaces = @spaces.where(city: city) if !params[:city].blank?
    @spaces = @spaces.where(state: state) if !params[:state].blank?
  end

  # GET /spaces/1
  # GET /spaces/1.json
  def show
  end

  # GET /spaces/new
  def new
    @space = Space.new
  end

  # GET /spaces/1/edit
  def edit
  end

  # POST /spaces
  # POST /spaces.json
  def create
    @space = Space.new(space_params)

    respond_to do |format|
      if @space.save
        format.html { redirect_to @space, notice: 'Space was successfully created.' }
        format.json { render action: 'show', status: :created, location: @space }
      else
        format.html { render action: 'new' }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spaces/1
  # PATCH/PUT /spaces/1.json
  def update
    respond_to do |format|
      if @space.update(space_params)
        format.html { redirect_to @space, notice: 'Space was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spaces/1
  # DELETE /spaces/1.json
  def destroy
    @space.destroy
    respond_to do |format|
      format.html { redirect_to spaces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_space
      @space = Space.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def space_params
      params.require(:space).permit(:city, :state, :laser_cutter, :three_d_printer, :cnc_router, :sewing_maching, :microcontroller_library)
    end

    def search_params
      params.require(:space).permit(:city, :state, :laser_cutter, :three_d_printer, :cnc_router, :sewing_maching, :microcontroller_library)
    end
end
