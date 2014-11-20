class SuscriberController < ApplicationController
  def create
    suscriber = Suscriber.new
    suscriber.user_id = params[:user_id]
    suscriber.role_id = params[:role_id]
    suscriber.payd = 0
    begin
      suscriber.save
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end
    redirect_to '/tournoi/show/' + params[:tournoi_id].to_s, :flash => { :notice => "admin add" }
  end

  def index
    @suscribers = Suscriber.all
  end

  def show
      if (params[:id].to_i.to_s != params[:id])
        redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
      end
      begin
        @suscriber = Suscriber.find(params[:id])
      rescue Exception => e
        redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas" } and return
      end
  end

  def update
    if (params[:id].to_i.to_s != params[:id])
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end
    @suscriber = Suscriber.find(params[:id])
    if !@suscriber
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end

    ### SAFETY


    if Tournoi.where("id = #{@suscriber.tournoi_id}").first.user_id != current_user.id
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end
    if params[:role]
      @suscriber.role = params[:role]
    end
    if params[:payd]
      @suscriber.payd = params[:payd]
    end
    begin
      @suscriber.save
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end
    redirect_to root_path, :flash => { :notice => "done" } and return
  end

  def delete
    if (params[:id].to_i.to_s != params[:id])
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end
    @suscriber = Suscriber.find(params[:id])
    if !@suscriber
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end

### safety

    if Tournoi.where("id = #{@suscriber.tournoi_id}").first.user_id != current_user.id
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end
    begin
      @suscriber.destroy
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "le suscriber n'existe pas" } and return
    end
    redirect_to root_path, :flash => { :notice => "done" } and return
    end
  end
end
