class BuildingStagesController < ApplicationController
  before_action :set_building_stage, only: [:show, :edit, :update, :destroy]

  # GET /building_stages
  # GET /building_stages.json
  def index
    @building_stages = BuildingStage.all
  end

  # GET /building_stages/1
  # GET /building_stages/1.json
  def show
  end

  # GET /building_stages/new
  def new
    @building_stage = BuildingStage.new
  end

  # GET /building_stages/1/edit
  def edit
  end

  # POST /building_stages
  # POST /building_stages.json
  def create
    @building_stage = BuildingStage.new(building_stage_params)

    respond_to do |format|
      if @building_stage.save
        format.html { redirect_to @building_stage, notice: 'Building stage was successfully created.' }
        format.json { render :show, status: :created, location: @building_stage }
      else
        format.html { render :new }
        format.json { render json: @building_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /building_stages/1
  # PATCH/PUT /building_stages/1.json
  def update
    respond_to do |format|
      if @building_stage.update(building_stage_params)
        format.html { redirect_to @building_stage, notice: 'Building stage was successfully updated.' }
        format.json { render :show, status: :ok, location: @building_stage }
      else
        format.html { render :edit }
        format.json { render json: @building_stage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /building_stages/1
  # DELETE /building_stages/1.json
  def destroy
    @building_stage.destroy
    respond_to do |format|
      format.html { redirect_to building_stages_url, notice: 'Building stage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building_stage
      @building_stage = BuildingStage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def building_stage_params
      params.require(:building_stage).permit(:stage)
    end
end
