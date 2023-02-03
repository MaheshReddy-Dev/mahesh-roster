class ShiftsController < ApplicationController
    before_action :set_shift, only: %i[ show edit update destroy ]
  
    def index
        @shifts = Shift.all
    end
    
    
    def show
    end
    
    def edit
    end
    
    
    def new
        @shift = Shift.new
    end
    
    
    def create
        @shift = Shift.new(shift_params)
        if @shift.save
            redirect_to @shift
            flash[:notice] =  "Shift was successfully created."
        else
        render 'new' , status: :unprocessable_entity
        end
    end
    
    
    def update
        if @shift.update(shift_params)
        redirect_to @shift
        flash[:notice] = "Shift was successfully updated."
        else
        render 'edit', status: :unprocessable_entity
        end
    end
    
    
    
    def destroy
        @shift.destroy
        flash[:notice] = "Shift destroy successfully"
        redirect_to shifts_path
    end
    
    private
        def set_shift
        @shift = Shift.find(params[:id])
        end
    
        def shift_params
        params.require(:shift).permit(:start_time,:end_time ,:employee_id,:roster_id)
        end
end
