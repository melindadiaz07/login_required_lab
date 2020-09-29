class SessionsController < ActionController::Base

    def new
    end

    def create
      if params[:name].nil? || params[:name].empty?
        redirect_to "/login"
      else
        session[:name] = params[:name]
        redirect_to "/secrets"
    end
  end

  def destroy
    if !session[:name].nil?
      session.delete :name
    
    end
  end


end