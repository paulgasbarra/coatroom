class CheckerSessionsController < ApplicationController

  def new
    # go to log-in form
  end

  def create

    checker = Checker.find_by(email: params[:email])

    if  checker && checker.authenticate(params[:password])
      session[:checker_id] =  checker.id
      redirect_to checker, notice: "Signed In as #{checker.first_name} # {checker.last_name}"
    else
      redirect_to log_in_checker_path, alert: 'Log-In Failed'
    end

  end

  def destroy
    session[:checker_id] = nil
    redirect_to root_path, notice: "Logged-Out"
  end

end
