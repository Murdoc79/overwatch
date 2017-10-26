class GuideSectionsController < ApplicationController
  before_action :authorize, except: [:index]
  before_action :set_guide_section, only: [:show, :edit, :update, :destroy]

  # GET /guide_sections
  # GET /guide_sections.json
  def index
    @guide_sections = GuideSection.all
    @no_section_guides = Guide.where(:guide_section_id => nil)
  end

  # GET /guide_sections/1
  # GET /guide_sections/1.json
  def show
  end

  # GET /guide_sections/new
  def new
    @guide_section = GuideSection.new
  end

  # GET /guide_sections/1/edit
  def edit
  end

  # POST /guide_sections
  # POST /guide_sections.json
  def create
    @guide_section = GuideSection.new(guide_section_params)

    respond_to do |format|
      if @guide_section.save
        format.html { redirect_to guide_sections_url, notice: 'Guide section was successfully created.' }
        format.json { render :show, status: :created, location: @guide_section }
      else
        format.html { render :new }
        format.json { render json: @guide_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guide_sections/1
  # PATCH/PUT /guide_sections/1.json
  def update
    respond_to do |format|
      if @guide_section.update(guide_section_params)
        format.html { redirect_to guide_sections_url, notice: 'Guide section was successfully updated.' }
        format.json { render :show, status: :ok, location: @guide_section }
      else
        format.html { render :edit }
        format.json { render json: @guide_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guide_sections/1
  # DELETE /guide_sections/1.json
  def destroy
    @guide_section.destroy
    respond_to do |format|
      format.html { redirect_to guide_sections_url, notice: 'Guide section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide_section
      @guide_section = GuideSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guide_section_params
      params.require(:guide_section).permit(:title)
    end
end
