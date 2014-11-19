class PhaseController < ApplicationController
	def create_view
	end

	def create
		phase = Phase.new
		phase.name = params[:name]
		phase.description = params[:description]
		phase.nb_win = params[:nb_win]
		phase.tournoi_id = params[:tournoi_id]
		begin
			phase.save
		rescue Exception => e
			redirect_to phase_create_view_path, :flash => { :alert => "probleme de creation de phase" } and return
		end
		redirect_to '/phase/show/' + phase.id.to_s, :flash => { :notice => "Votre phase a été créé" }
	end

	def index
		@phases = Phase.all
	end

	def index_by_tournoi_id
		if (params[:id].to_i.to_s != params[:id])
	      redirect_to root_path, :flash => { :alert => "Le tournoi recherché n'existe pas" } and return
	    end
		@phase = Phase.where("tournoi_id = #{params[:id]}")
	end

	def show
	    begin
	      @phase = Phase.friendly.find(params[:id])
	    rescue Exception => e
	      redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas" } and return
	    end
        if params[:id] != @phase.friendly_id
 	      redirect_to '/phase/show/' + @phase.friendly_id
  	    end
	end

	def update
		if (params[:id].to_i.to_s != params[:id])
			redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas" } and return
		end
		@phase = Phase.find(params[:id])
		if !@phase
			redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas" } and return
		end
		if Tournoi.where("id = #{@phase.tournoi_id}").first.user_id != current_user.id
			redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas" } and return
		end
		if params[:name]
			@phase.name = params[:name]
		end
		if params[:description]
			@phase.description = params[:description]
		end
		if params[:nb_win]
			@phase.nb_win = params[:nb_win]
		end
		begin
			@phase.save
		rescue Exception => e
			redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas" } and return
		end
		redirect_to root_path, :flash => { :notice => "done" } and return
	end

	def delete
		if (params[:id].to_i.to_s != params[:id])
			redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas 1" } and return
		end
		@phase = Phase.find(params[:id])
		if !@phase
			redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas 2" } and return
		end
		if Tournoi.where("id = #{@phase.tournoi_id}").first.user_id != current_user.id
			redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas" } and return
		end
		begin
			@phase.destroy
		rescue Exception => e
			redirect_to root_path, :flash => { :alert => "La phase recherché n'existe pas 4" } and return
		end
		redirect_to root_path, :flash => { :notice => "done" } and return
		end
	end
end