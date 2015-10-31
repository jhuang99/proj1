class PokemonsController < ApplicationController

	def index
    	@pokemons = Pokemon.all
  	end
	def capture
		@pokemon= Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_path
	end
	def damage 
		@pokemon = Pokemon.find(params[:id])
		trainer_id = @pokemon.trainer.id
		@pokemon.health = @pokemon.health - 10
		if @pokemon.health > 0
			@pokemon.save
		else
			@pokemon.destroy
		end
		redirect_to trainer_path(id: current_trainer)
	end

	def new
		@pokemon = Pokemon.new

		# @pokemon = Pokemon.create( name: params[:name], health: 100, level: 1, trainer: current_trainer)
		# redirect_to trainer_path(id: current_trainer)
	end
	def create
		
		@pokemon = Pokemon.new( name: pokemon_params[:name], health: 100, level: 1, trainer: current_trainer)
		if not @pokemon.valid?
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		else
			@pokemon.save
			redirect_to trainer_path(id: current_trainer)
		end
	end
	def pokemon_params
		params.require(:pokemon).permit(:name)
	end



end
