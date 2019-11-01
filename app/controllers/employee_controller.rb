class EmployeeController < ApplicationController
    def new
    end
    def index
    end
    def create
        @employee =Employee.new(employee_params)
        
        @employee.save
        redirect_to @employee
    end 
    def show
        @employee = Employee.find(params[:id])
    end 
    

end

private
    def employee_params
        params.require(:employee).permit(:name, :position, 
                                            :employeeid, :email, :phone)
    end