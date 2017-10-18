class SupervisorsController < ApplicationController

  # GET /supervisors
  def index
    @supervisors = Supervisor.all
  end

  # GET /supervisors/1
  def show
    @supervisor = Supervisor.find(params[:id])
  end

  # GET /supervisors/new
  def new
    @supervisor = Supervisor.new
  end

  # GET /supervisors/1/edit
  def edit
    @supervisor = Supervisor.find(params[:id])
  end

  # POST /supervisors
  def create
    @supervisor = Supervisor.new(supervisor_params)
    if @supervisor.save
      redirect_to supervisors_url, notice: 'Supervisor was successfully created.' 
    else
      render :new 
    end
  end

  # PATCH/PUT /supervisors/1
  def update
    @supervisor = Supervisor.find(params[:id])
    respond_to do |format|
      if @supervisor.update(supervisor_params)
        format.html { redirect_to supervisors_url, notice: 'Supervisor was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /supervisors/1
  def destroy
    @supervisor = Supervisor.find(params[:id])
    @supervisor.destroy
    redirect_to supervisors_url, notice: 'Supervisor was successfully destroyed.'
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def supervisor_params
      params.require(:supervisor).permit(:name, :phone, :builder_id)
    end
end
