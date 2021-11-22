class PostalcodesController < ApplicationController

    def new
        
    end

    def create
        @postalcode = Postalcode.new(postal_params)
        @postalcode.save
        redirect_to @postalcode
        
    end

    def index
        puts params[:code] 
        @postalcode = Postalcode.all
    end

    def show
        @postalcode = Postalcode.find(params[:id])
    end

    def getByCode
       puts params[:code] 

    end

    private
    def postal_params
        params.require(:postalcode).permit(:department, :municipality, :postalcode, :neighbourhood, :code)
    end

end
