class RostersController < ApplicationController
    before_action :set_roster, only: %i[ show edit update destroy ]
    
    def index
        @rosters = Roster.all
    end
    
    
    def show
    end
    
    def edit
    end
    
    
    def new
        @roster = Roster.new
    end
    
    
    def create
        @roster = Roster.new(roster_params)
        if @roster.save
            redirect_to @pages_path
            flash[:notice] =  "Roster was successfully created."
        else
        render 'new' , status: :unprocessable_entity
        end
    end
    
    
    def update
        if @roster.update(roster_params)
        redirect_to @roster
        flash[:notice] = "roster was successfully updated."
        else
        render 'edit', status: :unprocessable_entity
        end
    end
    
    
    
    def destroy
        @roster.destroy
        flash[:notice] = "roster destroy successfully"
        redirect_to rosters_path
    end
    
    private
        def set_roster
        @roster = Roster.find(params[:id])
        end
    
        def roster_params
        params.require(:roster).permit(:roster_date, :company_id)
        end

end
    


