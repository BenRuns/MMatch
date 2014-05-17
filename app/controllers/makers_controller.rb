class MakersController < ApplicationController
  before_action :set_maker, only: [:show, :edit, :update, :destroy]

  # GET /makers
  # GET /makers.json
  def index
    @makers = Maker.all
  end

  # GET /makers/1
  # GET /makers/1.json
  def show
  end

  # GET /makers/new
  def new
    @maker = Maker.new
  end

  # GET /makers/1/edit
  def edit
  end

  # POST /makers
  # POST /makers.json
  def create
    @maker = Maker.new(maker_params)

    respond_to do |format|
      if @maker.save
        format.html { redirect_to @maker, notice: 'Maker was successfully created.' }
        format.json { render action: 'show', status: :created, location: @maker }
      else
        format.html { render action: 'new' }
        format.json { render json: @maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /makers/1
  # PATCH/PUT /makers/1.json
  def update
    respond_to do |format|
      if @maker.update(maker_params)
        format.html { redirect_to @maker, notice: 'Maker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @maker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makers/1
  # DELETE /makers/1.json
  def destroy
    @maker.destroy
    respond_to do |format|
      format.html { redirect_to makers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maker
      @maker = Maker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maker_params
      params.require(:maker).permit(:name, :location, :space, :tools, :skills, :bio)
    end
end
