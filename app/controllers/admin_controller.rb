class AdminController < ApplicationController
  def create
    admin = Admin.new
    admin.name = params[:user_id]
    admin.nb_player = params[:role]
    admin.date = params[:tournoi_id]
    begin
      admin.save
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "l'admin n'a pas pu etre ajouté" } and return
    end
    redirect_to '/tournoi/show/' + params[:tournoi_id].to_s, :flash => { :notice => "admin add" }
  end

  def index
  end

  def show
  end

  def update
  end

  def delete
  end
end
