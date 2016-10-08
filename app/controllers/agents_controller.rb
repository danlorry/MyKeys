class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]
  
  def index
    @agents = current_user.agents
  end

  def show
   
  end

  def new
     @agent = current_user.agents.build
  end
  
  def create
    @agent = current_user.agents.build(agent_params)

    if @agent.save
      redirect_to edit_agent_path(@agent), notice: "Saved..."
    else
      render :new
    end
  end


  def edit
     
  end

  def update
    if @agent.update(agent_params)
      redirect_to @agent, notice: "Updated..."
    else
      render :edit
    end
  end
  
   private
    def set_agent
      @agent = Agent.find(params[:id]) 
    end
    
    def agent_params
      params.require(:agent).permit(:name, :address, :phone_number, :email, :about, :days_availability, :time_availability,:price, :agent_type)
    end
end
