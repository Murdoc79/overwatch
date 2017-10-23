class BuildersController < ApplicationController

  # GET /builders
  def index
    @builders = Builder.all
  end

  # GET /builders/1
  def show
    @builder = Builder.find(params[:id])
  end

  # GET /builders/new
  def new
    @builder = Builder.new
  end

  # GET /builders/1/edit
  def edit
    @builder = Builder.find(params[:id])
  end

  # POST /builders
  def create
    @builder = Builder.new(builder_params)


    if @builder.save
      redirect_to @builder, notice: 'Builder was successfully created.' 
    else
      render :new 
    end

  end

  # PATCH/PUT /builders/1
  def update
    @builder = Builder.find(params[:id])

    if @builder.update(builder_params)
      redirect_to @builder, notice: 'Builder was successfully updated.' 
    else
      render :edit 
    end

  end

  # DELETE /builders/1

  def destroy  
    @builder = Builder.find(params[:id])
    @builder.destroy
    redirect_to builders_url, notice: 'Builder was successfully destroyed.'

  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def builder_params
      params.require(:builder).permit(:name)
    end
end
