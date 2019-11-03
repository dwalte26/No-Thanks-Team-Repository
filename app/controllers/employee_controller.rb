class EmployeeController < ApplicationController
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
        @employee =Employee.new(employee_params)
        
        if @employee.save
            redirect_to @employee_index_path
        else
            render 'new'
        end
        
    end 
    
    

end

private
    def employee_params
        params.require(:employee).permit(:name, :position, 
                                            :employeeid, :email, :phone)
    end