class DirectoryController < ApplicationController
    def show
        @employee = Employee.find(params[:id])
    end
    def index
        @employees = Employee.all
    end
    
    
end

private
    def directory_params
        params.require(:employee).permit(:name, :phone, :email)
    end