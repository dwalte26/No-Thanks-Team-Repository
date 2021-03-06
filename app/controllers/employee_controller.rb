class EmployeeController < ApplicationController
    #dev branch change 
    def index
        @employee = Employee.all
    end
    def show
       @employee = Employee.find(params[:id])
    end 
    def new
        @employee = Employee.new
    end
    def create
        @employee = Employee.new(employee_params)
        
        if @employee.save
            redirect_to @employee
        else
            render 'new'
        end
    end 
    def edit
        @employee = Employee.find(params[:id])
    end    
    def update
        @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
            redirect_to @employee
        else
            render 'edit'
        end
    end
    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        
        redirect_to employee_index_path
    end
end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

private
    def employee_params
        params.require(:employee).permit(:name, :position, 
                                            :employeeid, :email, 
                                            :phone, :password)
    end