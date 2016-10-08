class PagesController < ApplicationController
  def home
  	@agents = Agent.limit(3)
  end

  def search
  	
  	if params[:search].present? && params[:search].strip != ""
  		session[:loc_search] = params[:search]
  	end

  	@arrAgents = Array.new

  	if session[:loc_search] && session[:loc_search] != ""
  		@agents_address = Agent.where(active: true).near(session[:loc_search], 5, order: 'distance')
  	else
  		@agents_address = Agent.where(active: true).all
  	end

  	@search = @agents_address.ransack(params[:q])
  	@agents = @search.result

  	@arrAgents = @agents.to_a

  end
  
  def how_does_it_work
    
  end
end
