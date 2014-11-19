class SuscriberController < ApplicationController
  def create
    suscriber = Suscriber.new
    suscriber.name = params[:user_id]
    suscriber.nb_player = params[:role]
    suscriber.payd = 0
    suscriber.date = params[:tournoi_id]
    begin
      suscriber.save
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "l'admin n'a pas pu etre ajouté" } and return
    end
    redirect_to '/tournoi/show/' + params[:tournoi_id].to_s, :flash => { :notice => "admin add" }
  end

  def index
    @suscribers = Suscriber.all
  end

  def show
  end

  def update
  end

  def delete
  end
end
