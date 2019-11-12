class ProjectsController < ApplicationController
    def create
        @employee = Employee.find(params[:employee_id])
        @projects = @employee.projects.create(project_params)
        redirect_to employee_index_path(@employee)
    end
    
    
    private
        def project_params
            params.require(:project).permit(:title, :body)
        end
end