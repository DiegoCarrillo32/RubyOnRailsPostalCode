class PostalcodesController < ApplicationController

    def new
        @postalcode = Postalcode.new
    end

    def create
        @postalcode = Postalcode.new(postal_params)
        if @postalcode.save
            redirect_to @postalcode
        else
            render 'new'
        end



    end

    def destroy
        @postalcode = Postalcode.find(params[:id])
        @postalcode.destroy

    end

    def edit
        @postalcode = Postalcode.find(params[:id])
    end

    def update
        @postalcode = Postalcode.find(params[:id])
        if @postalcode.update(postal_params)
            redirect_to @postalcode
        else
            render 'edit'
        end
    end

    def index
        puts params[:code] 
        @postalcode = Postalcode.all
    end

    def show
        @postalcode = Postalcode.find(params[:id])
    end

    def getbycode

        if params[:code].length == 5
            @postalcode = Postalcode.find_by(:postalcode => params[:code])
            if @postalcode
                render template: 'postalcodes/show'


            else
                redirect_to '/postalcodes'

            end
        end


    end

    private
    def postal_params
        params.require(:postalcode).permit(:department, :municipality, :postalcode, :neighbourhood, :code)
    end

end
