class AreasController < ApplicationController

  # GET /areas
  def index
    @areas = Area.all
  end

  # GET /areas/1
  def show
    @area = Area.find(params[:id])
  end

  # GET /areas/new
  def new
    @area = Area.new
  end

  # GET /areas/1/edit
  def edit
    @area = Area.find(params[:id])
  end

  # POST /areas
  def create
    @area = Area.new(area_params)


    if @area.save
      redirect_to @area, notice: 'Area was successfully created.' 
    else
      render :new 
    end

  end

  # PATCH/PUT /areas/1
  def update
    @area = Area.find(params[:id])

    if @area.update(area_params)
      redirect_to @area, notice: 'Area was successfully updated.'
    else
      render :edit 
    end

  end

  # DELETE /areas/1
  def destroy
    @area = Area.find(params[:id])
    @area.destroy
    redirect_to areas_url, notice: 'Area was successfully destroyed.'
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def area_params
      params.require(:area).permit(:name, :desc)
    end
end
