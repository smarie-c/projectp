class RoleController < ApplicationController
  def create
    role = Role.new
    role.tournoi_id = params[:tournoi_id]
    role.name = params[:name]
    role.price = params[:price]
    role.nb_place = params[:nb_place]
    begin
      role.save
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "le role n'a pas été créé" } and return
    end
    redirect_to '/tournoi/show/' + params[:tournoi_id].to_s, :flash => { :notice => "role add" }
  end

  def index
    @roles = Role.all
  end

  def show
      if (params[:id].to_i.to_s != params[:id])
        redirect_to root_path, :flash => { :alert => "le role n'existe pas" } and return
      end
      begin
        @role = Role.find(params[:id])
      rescue Exception => e
        redirect_to root_path, :flash => { :alert => "La role recherché n'existe pas" } and return
      end
  end

  def update
    if (params[:id].to_i.to_s != params[:id])
      redirect_to root_path, :flash => { :alert => "le role n'existe pas" } and return
    end
    begin
    	@role = Role.find(params[:id])
    rescue Exception => e
    	redirect_to root_path, :flash => { :alert => "le role n'existe pas" } and return
    end

    ### SAFETY


    if Tournoi.where("id = #{@role.tournoi_id}").first.user_id != current_user.id
      redirect_to root_path, :flash => { :alert => "le role n'existe pas" } and return
    end
    if params[:name]
      @role.name = params[:name]
    end
    if params[:price]
      @role.price = params[:price]
    end
    if params[:nb_place]
      @role.nb_place = params[:nb_place]
    end
    begin
      @role.save
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "le role n'existe pas" } and return
    end
    redirect_to root_path, :flash => { :notice => "done" } and return
  end

  def delete
    if (params[:id].to_i.to_s != params[:id])
      redirect_to root_path, :flash => { :alert => "le role n'existe pas" } and return
    end
    begin
    	@role = Role.find(params[:id])
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "le role n'existe pas" } and return
    end

### safety

    if Tournoi.where("id = #{@role.tournoi_id}").first.user_id != current_user.id
      redirect_to root_path, :flash => { :alert => "le role n'existe pas" } and return
    end
    begin
      @role.destroy
    rescue Exception => e
      redirect_to root_path, :flash => { :alert => "le role n'existe pas" } and return
    end
    redirect_to root_path, :flash => { :notice => "done" } and return
    end
  end
end
