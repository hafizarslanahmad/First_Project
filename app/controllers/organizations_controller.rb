class OrganizationsController < ApplicationController
    def new
        @organization= Organization.new

    end
    
    def index
        @organizations= Organization.all
    end
    
    def create
          @organization= Organization.new(organization_params)
        
        if @organization.save

            redirect_to organizations_path, notice: "Successfully inter data"
        else
            render :new
        end


    end

    def destroy 
        @organization=Organization.find( params[:id])
        @organization.destroy!
        redirect_to organizations_path, notice:  "Your data has been deleted"
    end

    private
       def organization_params
          params.require(:organization).permit(:name, :address, :contect_no, :category ) 
       end

       
end