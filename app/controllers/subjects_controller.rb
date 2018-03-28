class SubjectsController < ApplicationController
	def show
    #byebug
    	@subject = Subject.find_by id: params[:id]
  	end
end
