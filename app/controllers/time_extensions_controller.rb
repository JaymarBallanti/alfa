class TimeExtensionsController < ApplicationController
  before_action :set_time_extension, only: [:show, :edit, :update, :destroy]

  # GET /time_extensions
  # GET /time_extensions.json
  def index
    @time_extensions = TimeExtension.all
  end

  # GET /time_extensions/1
  # GET /time_extensions/1.json
  def show
  end

  # GET /time_extensions/new
  def new
    @project = Project.find(params[:project_id])
    @time_extension = @project.time_extensions.build
  end

  # GET /time_extensions/1/edit
  def edit
  end

  # POST /time_extensions
  # POST /time_extensions.json
  def create
     @project= Project.find(params[:project_id])
    @time_extension = @project.time_extensions.create(time_extension_params)

    respond_to do |format|
      if @time_extension.save
        format.html { redirect_to project_path(@project), notice: 'Time extension was successfully created.' }
        format.json { render :show, status: :created, location: @time_extension }
      else
        format.html { render :new }
        format.json { render json: @time_extension.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /time_extensions/1
  # PATCH/PUT /time_extensions/1.json
  def update
    respond_to do |format|
      if @time_extension.update(time_extension_params)
        format.html { redirect_to @time_extension.project, notice: 'Time extension was successfully updated.' }
        format.json { render :show, status: :ok, location: @time_extension }
      else
        format.html { render :edit }
        format.json { render json: @time_extension.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_extensions/1
  # DELETE /time_extensions/1.json
  def destroy
    @time_extension.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Time extension was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_extension
      @time_extension = TimeExtension.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def time_extension_params
      params.require(:time_extension).permit(:date_from, :date_to, :number_of_days)
    end
end
