class DeepWellOverviewsController < ApplicationController
  before_action :set_deep_well_overview, only: %i[ show edit update destroy ]

  # GET /deep_well_overviews or /deep_well_overviews.json
  def index
    @deep_well_overviews = DeepWellOverview.all
  end

  # GET /deep_well_overviews/1 or /deep_well_overviews/1.json
  def show
  end

  # GET /deep_well_overviews/new
  def new
    @deep_well_overview = DeepWellOverview.new
  end

  # GET /deep_well_overviews/1/edit
  def edit
  end

  # POST /deep_well_overviews or /deep_well_overviews.json
  def create
    @deep_well_overview = DeepWellOverview.new(deep_well_overview_params)

    respond_to do |format|
      if @deep_well_overview.save
        format.html { redirect_to deep_well_overview_url(@deep_well_overview), notice: "Deep well overview was successfully created." }
        format.json { render :show, status: :created, location: @deep_well_overview }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deep_well_overview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deep_well_overviews/1 or /deep_well_overviews/1.json
  def update
    respond_to do |format|
      if @deep_well_overview.update(deep_well_overview_params)
        format.html { redirect_to deep_well_overview_url(@deep_well_overview), notice: "Deep well overview was successfully updated." }
        format.json { render :show, status: :ok, location: @deep_well_overview }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deep_well_overview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deep_well_overviews/1 or /deep_well_overviews/1.json
  def destroy
    @deep_well_overview.destroy

    respond_to do |format|
      format.html { redirect_to deep_well_overviews_url, notice: "Deep well overview was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deep_well_overview
      @deep_well_overview = DeepWellOverview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deep_well_overview_params
      params.require(:deep_well_overview).permit(:dwID, :deepWellName)
    end
end
