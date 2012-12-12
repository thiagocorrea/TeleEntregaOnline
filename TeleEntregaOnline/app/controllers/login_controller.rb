class LoginController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]

  def new
  end

 def create
 user = User.find_by_username(params[:username])
    if user && user.password ==(params[:password])
      session[:user_id] = user.id

 respond_to do |format|
      format.html { redirect_to purchases_url }
      format.json { head :no_content }
    end

    else
      #flash.now.alert "Usuario ou senha invalida!"
      redirect_to root_url, :notice => "Usuario nao cadastrado!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Desconectado!"
  end
end

