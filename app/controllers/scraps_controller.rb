class ScrapsController < ApplicationController
	def index
		@scraps = Scrap.all
  end

	def show
		@scrap = Scrap.find(params[:id])
  end

	def new
		@scrap = Scrap.new
  end

	def create
		@scrap = Scrap.new(scrap_params)
		if @scrap.save
			redirect_to scrap_path(@scrap)
		else
			redirect_to new_scrap_path
		end
  end

	def edit
		@scrap = Scrap.find(params[:id])
  end

	def update
		@scrap = Scrap.find(params[:id])
		if @scrap.update(scrap_params)
			redirect_to scrap_path(@scrap)
		else
			redirect_to edit_scrap_path(@scrap)
		end
  end

	def destroy
		@scrap = Scrap.find(params[:id])
		if @scrap.destroy
			redirect_to root_path
		else
			redirect_to edit_scrap_path(@scrap)
		end
	end
	
	private
	def scrap_params
		params.require(:scrap).permit(:caption, :image)
	end
end
