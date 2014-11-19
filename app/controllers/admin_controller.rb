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
    @admins = Admin.all
  end

  def show
      if (params[:id].to_i.to_s != params[:id])
        redirect_to root_path, :flash => { :alert => "l'admin' n'existe pas" } and return
      end
      begin
        @admin = Admin.find(params[:id])
      rescue Exception => e
        redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas" } and return
      end
  end

  def update
    if (params[:id].to_i.to_s != params[:id])
      redirect_to root_path, :flash => { :alert => "l'admin recherché n'existe pas" } and return
    end
    @admin = Admin.find(params[:id])
    if !@admin
      redirect_to root_path, :flash => { :alert => "l'admin recherché n'existe pas" } and return
    end

    ### SAFETY


    if Tournoi.where("id = #{@admin.tournoi_id}").first.user_id != current_user.id
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end
    if params[:role]
      @admin.role = params[:role]
    end
    begin
      @admin.save
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "l'admin recherché n'existe pas" } and return
    end
    redirect_to root_path, :flash => { :notice => "done" } and return
  end

  def delete
    if (params[:id].to_i.to_s != params[:id])
      redirect_to root_path, :flash => { :alert => "l'admin recherché n'existe pas" } and return
    end
    @admin = Admin.find(params[:id])
    if !@admin
      redirect_to root_path, :flash => { :alert => "l'admin recherché n'existe pas" } and return
    end

### safety

    if Tournoi.where("id = #{@admin.tournoi_id}").first.user_id != current_user.id
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end
    begin
      @admin.destroy
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "l'admin recherché n'existe pas" } and return
    end
    redirect_to root_path, :flash => { :notice => "done" } and return
    end
  end
end
