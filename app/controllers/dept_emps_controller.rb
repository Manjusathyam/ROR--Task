class DeptEmpsController < ApplicationController
  before_action :set_dept_emp, only: %i[ show edit update destroy ]

  # GET /dept_emps or /dept_emps.json
  def index
    @dept_emps = DeptEmp.all
  end

  # GET /dept_emps/1 or /dept_emps/1.json
  def show
  end

  # GET /dept_emps/new
  def new
    @dept_emp = DeptEmp.new
  end

  # GET /dept_emps/1/edit
  def edit
  end

  # POST /dept_emps or /dept_emps.json
  def create
    @dept_emp = DeptEmp.new(dept_emp_params)

    respond_to do |format|
      if @dept_emp.save
        format.html { redirect_to dept_emp_url(@dept_emp), notice: "Dept emp was successfully created." }
        format.json { render :show, status: :created, location: @dept_emp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dept_emp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dept_emps/1 or /dept_emps/1.json
  def update
    respond_to do |format|
      if @dept_emp.update(dept_emp_params)
        format.html { redirect_to dept_emp_url(@dept_emp), notice: "Dept emp was successfully updated." }
        format.json { render :show, status: :ok, location: @dept_emp }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dept_emp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dept_emps/1 or /dept_emps/1.json
  def destroy
    @dept_emp.destroy

    respond_to do |format|
      format.html { redirect_to dept_emps_url, notice: "Dept emp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dept_emp
      @dept_emp = DeptEmp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dept_emp_params
      params.require(:dept_emp).permit(:emp_no, :dept_no, :from_date, :to_date)
    end
end
