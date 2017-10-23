class NotesController < ApplicationController

  # GET /notes
  def index
    @notes = Note.all
  end

  # GET /notes/1
  def show
    @note = Note.find(params[:id])
  end

  # GET /notes/new
  def new
    @job_site_id = params[:job_site_id]
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
  end

  # POST /notes
  def create
    @note = Note.new(note_params)
    @note.job_site_id = params[:job_site_id]
    @job_site = JobSite.find(@note.job_site_id)

    if @note.save
      redirect_to @job_site, notice: 'Note was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /notes/1
  def update
    @note = Note.find(params[:id])
    @job_site = @note.job_site
    if @note.update(note_params)
      redirect_to @job_site, notice: 'Note was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /notes/1
  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to job_site_url(@note.job_site_id), notice: 'Note was successfully destroyed.'
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:title, :body, :job_site_id)
    end
end
