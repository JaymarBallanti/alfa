class ManpowersController < ApplicationController
  before_action :set_manpower, only: [:show, :edit, :update, :destroy]


  # GET /manpowers/new
  def new
    @project = Project.find(params[:project_id])
    @manpower = @project.build_manpower
  end

  # POST /manpowers
  # POST /manpowers.json
  def create
    @project= Project.find(params[:project_id])
    @manpower = @project.create_manpower(manpower_params)

    respond_to do |format|
      if @manpower.save
        format.html { redirect_to project_path(@project), notice: 'Manpower was successfully created.' }
        format.json { render :show, status: :created, location: @manpower }
      else
        format.html { render :new }
        format.json { render json: @manpower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manpowers/1
  # PATCH/PUT /manpowers/1.json
  def update
    respond_to do |format|
      if @manpower.update(manpower_params)
        format.html { redirect_to @manpower.project, notice: 'Manpower was successfully updated.' }
        format.json { render :show, status: :ok, location: @manpower }
      else
        format.html { render :edit }
        format.json { render json: @manpower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manpowers/1
  # DELETE /manpowers/1.json
  def destroy
    @manpower.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Manpower was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manpower
      @manpower = Manpower.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manpower_params
      params.require(:manpower).permit(:project_engineer, :materials_engineer, :project_foreman)
    end
end
