class TournoiController < ApplicationController
  def create_view
  end

  def create
    tournoi = Tournoi.new
    tournoi.name = params[:name]
    tournoi.date = params[:date]
    tournoi.nb_phase = params[:nb_phase]
    tournoi.cash_prize = params[:cash_prize]
    tournoi.description = params[:description]
    tournoi.user_id = current_user.id
    begin
      tournoi.save
    rescue Exception => e
      redirect_to tournoi_create_view_path, :flash => { :alert => "probleme de creation de tournoi" } and return
    end
    redirect_to '/tournoi/show/' + tournoi.id.to_s, :flash => { :notice => "Votre tournoi a été créé" }
  end

  def index
    @tournois = Tournoi.all
  end

  def show
    begin
      @tournoi = Tournoi.friendly.find(params[:id])
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas2" } and return
    end
    if params[:id] != @tournoi.friendly_id
       redirect_to '/tournoi/show/' + @tournoi.friendly_id
    end
  end

  def update
    if (params[:id].to_i.to_s != params[:id])
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas3" } and return
    end
    @tournoi = Tournoi.find(params[:id])
    if !@tournoi
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas4" } and return
    end
    if @tournoi.user_id != current_user.id
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas5" } and return
    end
    if params[:date]
      @tournoi.date = params[:date]
    end
    if params[:nb_phase]
      @tournoi.nb_phase = params[:nb_phase]
    end
    if params[:cash_prize]
      @tournoi.cash_prize = params[:cash_prize]
    end
    if params[:description]
      @tournoi.description = params[:description]
    end
    begin
      @tournoi.save
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas" } and return
    end
    redirect_to root_path, :flash => { :notice => "done" } and return
  end

  def delete
    if (params[:id].to_i.to_s != params[:id])
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas 1" } and return
    end
    @tournoi = Tournoi.find(params[:id])
    if !@tournoi
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas 2" } and return
    end
    if @tournoi.user_id != current_user.id
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas 3" } and return
    end
    begin
      @tournoi.destroy
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas 4" } and return
    end
    redirect_to root_path, :flash => { :notice => "done" } and return
  end
end
