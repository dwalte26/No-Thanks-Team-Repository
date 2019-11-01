class EmployeeController < ApplicationController
    def new
    end
    def index
    end
    def create
        render plain: params[:employee].inspect
    end 

end
