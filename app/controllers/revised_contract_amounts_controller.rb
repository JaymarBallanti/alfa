class RevisedContractAmountsController < ApplicationController
  before_action :set_revised_contract_amount, only: [:show, :edit, :update, :destroy]

  # GET /revised_contract_amounts
  # GET /revised_contract_amounts.json
  def index
    @revised_contract_amounts = RevisedContractAmount.all
  end

  # GET /revised_contract_amounts/1
  # GET /revised_contract_amounts/1.json
  def show
  end

  # GET /revised_contract_amounts/new
  def new
    @project= Project.find(params[:project_id])
    @revised_contract_amount = @project.revised_contract_amounts.build
  end

  # GET /revised_contract_amounts/1/edit
  def edit
  end

  # POST /revised_contract_amounts
  # POST /revised_contract_amounts.json
  def create
    @project= Project.find(params[:project_id])
    @revised_contract_amount = @project.revised_contract_amounts.create(revised_contract_amount_params)

    respond_to do |format|
      if @revised_contract_amount.save
        format.html { redirect_to project_path(@project), notice: 'Revised contract amount was successfully created.' }
        format.json { render :show, status: :created, location: @revised_contract_amount }
      else
        format.html { render :new }
        format.json { render json: @revised_contract_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /revised_contract_amounts/1
  # PATCH/PUT /revised_contract_amounts/1.json
  def update
    respond_to do |format|
      if @revised_contract_amount.update(revised_contract_amount_params)
        format.html { redirect_to @revised_contract_amount.project, notice: 'Revised contract amount was successfully updated.' }
        format.json { render :show, status: :ok, location: @revised_contract_amount }
      else
        format.html { render :edit }
        format.json { render json: @revised_contract_amount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /revised_contract_amounts/1
  # DELETE /revised_contract_amounts/1.json
  def destroy
    @revised_contract_amount.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Revised contract amount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_revised_contract_amount
      @revised_contract_amount = RevisedContractAmount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def revised_contract_amount_params
      params.require(:revised_contract_amount).permit(:amount)
    end
end
