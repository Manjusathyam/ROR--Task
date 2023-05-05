class DeptManagersController < ApplicationController
  before_action :set_dept_manager, only: %i[ show edit update destroy ]

  # GET /dept_managers or /dept_managers.json
  def index
    @dept_managers = DeptManager.all
  end

  # GET /dept_managers/1 or /dept_managers/1.json
  def show
  end

  # GET /dept_managers/new
  def new
    @dept_manager = DeptManager.new
  end

  # GET /dept_managers/1/edit
  def edit
  end

  # POST /dept_managers or /dept_managers.json
  def create
    @dept_manager = DeptManager.new(dept_manager_params)

    respond_to do |format|
      if @dept_manager.save
        format.html { redirect_to dept_manager_url(@dept_manager), notice: "Dept manager was successfully created." }
        format.json { render :show, status: :created, location: @dept_manager }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dept_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dept_managers/1 or /dept_managers/1.json
  def update
    respond_to do |format|
      if @dept_manager.update(dept_manager_params)
        format.html { redirect_to dept_manager_url(@dept_manager), notice: "Dept manager was successfully updated." }
        format.json { render :show, status: :ok, location: @dept_manager }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dept_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dept_managers/1 or /dept_managers/1.json
  def destroy
    @dept_manager.destroy

    respond_to do |format|
      format.html { redirect_to dept_managers_url, notice: "Dept manager was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dept_manager
      @dept_manager = DeptManager.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dept_manager_params
      params.require(:dept_manager).permit(:dept_no, :emp_no, :from_date, :to_date)
    end
end
