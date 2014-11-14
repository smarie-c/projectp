class TournoiController < ApplicationController
  def create_view
  end

  def create
    tournoi = Tournoi.new
    tournoi.name = params[:name]
    tournoi.nb_player = params[:nb_player]
    tournoi.date = params[:date]
    tournoi.nb_phase = params[:nb_phase]
    tournoi.cash_prize = params[:cash_prize]
    tournoi.description = params[:description]
    tournoi.price = params[:price]
    begin
      tournoi.save
    rescue Exception => e
      redirect_to tournoi_create_view_path, :flash => { :alert => "probleme de creation de tournoi" } and return
    end
    redirect_to '/tournoi/info/' + tournoi.id.i_tos, :flash => { :notice => "Votre tournoi a été créé" }
  end

  def list
    @tournoi = Tournoi.all
  end

  def info
    if (params[:id].to_i.to_s != params[:id])
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas" } and return
    end
    @tournoi = Tournoi.find(params[:id])
  end

  def update_view
  end

  def update
  end
end
