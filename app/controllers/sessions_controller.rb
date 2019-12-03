class SessionsController < ApplicationController
  def new
  end
  def create
    employee = Employee.find_by_email(params[:email])
    if employee && employee.authenticate(params[:password])
      session[:employee_id] = employee.id
      redirect_to employee_index_path, notice: "Logged in!"
    else
      flash.now[:alert] = "Email or password is invalid"
      render welcome_index_path
    end
  end
  def destroy
    session[:employee_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
