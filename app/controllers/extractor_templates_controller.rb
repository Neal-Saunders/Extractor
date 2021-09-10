class ExtractorTemplatesController < ApplicationController
  before_action :set_extractor_template, only: %i[ show edit update destroy ]

  # GET /extractor_templates or /extractor_templates.json
  def index
    @extractor_templates = ExtractorTemplate.all
  end

  # GET /extractor_templates/1 or /extractor_templates/1.json
  def show
  end

  # GET /extractor_templates/new
  def new
    @extractor_template = ExtractorTemplate.new
  end

  # GET /extractor_templates/1/edit
  def edit
  end

  # POST /extractor_templates or /extractor_templates.json
  def create
    @extractor_template = ExtractorTemplate.new(extractor_template_params)

    respond_to do |format|
      if @extractor_template.save
        ::ExtractorTemplates::CreateGithubIssue.perform
        format.html { redirect_to @extractor_template, notice: "Extractor template was successfully created." }
        format.json { render :show, status: :created, location: @extractor_template }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @extractor_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extractor_templates/1 or /extractor_templates/1.json
  def update
    respond_to do |format|
      if @extractor_template.update(extractor_template_params)
        format.html { redirect_to @extractor_template, notice: "Extractor template was successfully updated." }
        format.json { render :show, status: :ok, location: @extractor_template }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @extractor_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extractor_templates/1 or /extractor_templates/1.json
  def destroy
    @extractor_template.destroy
    respond_to do |format|
      format.html { redirect_to extractor_templates_url, notice: "Extractor template was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extractor_template
      @extractor_template = ExtractorTemplate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def extractor_template_params
      params.require(:extractor_template).permit(:sheetID, :SheetName, :PrimaryKey)
    end
end
