class JobSitesController < ApplicationController

  # GET /job_sites
  def index
    @job_sites = JobSite.all
  end

  # GET /job_sites/1
  def show
    @job_site = JobSite.find(params[:id])
    @notes = @job_site.notes
  end

  # GET /job_sites/new
  def new
    @job_site = JobSite.new
  end

  # GET /job_sites/1/edit
  def edit
    @job_site = JobSite.find(params[:id])
  end

  # POST /job_sites
  def create
    @job_site = JobSite.new(job_site_params)

    if @job_site.save
      redirect_to @job_site, notice: 'Job Site was successfully created.' 
    else
      render :new 
    end
  end

  # PATCH/PUT /job_sites/1
  def update
    @job_site = JobSite.find(params[:id])

    if @job_site.update(job_site_params)
      redirect_to @job_site, notice: 'Job Site was successfully updated.' 
    else
      render :edit 
    end
  end

  # DELETE /job_sites/1
  def destroy
    @job_site = JobSite.find(params[:id])
    @job_site.destroy

    redirect_to job_sites_url, notice: 'Job Site was successfully destroyed.'
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def job_site_params
      params.require(:job_site).permit(:address, :builder_id, :building_stage_id, :area_id, :supervisor_id)
    end
end
