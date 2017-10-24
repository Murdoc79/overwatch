class BuildingStagesController < ApplicationController

  # GET /building_stages
  def index
    @building_stages = BuildingStage.all
  end

  # GET /building_stages/1
  def show
    @building_stage = BuildingStage.find(params[:id])
  end

  # GET /building_stages/new
  def new
    @building_stage = BuildingStage.new
  end

  # GET /building_stages/1/edit
  def edit
    @building_stage = BuildingStage.find(params[:id])
  end

  # POST /building_stages
  def create
    @building_stage = BuildingStage.new(building_stage_params)


    if @building_stage.save
      redirect_to building_stages_url, notice: 'Building stage was successfully created.' 
    else
      render :new 
    end

  end

  # PATCH/PUT /building_stages/1
  def update
    @building_stage = BuildingStage.find(params[:id])

    if @building_stage.update(building_stage_params)
      redirect_to building_stages_url, notice: 'Building stage was successfully updated.' 
    else
      render :edit 
    end

  end

  # DELETE /building_stages/1
  def destroy
    @building_stage = BuildingStage.find(params[:id])
    @building_stage.destroy

    redirect_to building_stages_url, notice: 'Building stage was successfully destroyed.'

  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def building_stage_params
      params.require(:building_stage).permit(:stage)
    end
end
