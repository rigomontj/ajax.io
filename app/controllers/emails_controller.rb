class EmailsController < ApplicationController
	respond_to :html, :js

    def index
  	    @emails = Email.all
    end

    def show
        @email = Email.find(params[:id])
        respond_to do |format|
        	format.html
        	format.js
        end
    end

    def new
    	@email = Email.new
    end

    def create
    	@email = Email.create(email_params)
    end

    def edit
        @email = Email.find(params[:id])    	
    end

    def update
    	@email = Email.find(params[:id])   
    	@email.update_attributes(email_params)
    end

    def delete
    	@email = Email.find(params[:id])
    end

    def destroy
    	@email = Email.find(params[:id])
    	@email.destroy
    end


    private

	def email_params
	  	params.require(:email).permit(:object, :body)
	end

end
