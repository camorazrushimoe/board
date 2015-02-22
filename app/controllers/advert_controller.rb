class AdvertController < ApplicationController
	before_filter :authenticate_user!
	before_action :set_advert, only: [:show, :edit, :update, :destroy]

	def index
		@advert = Advert.all

	end

	def show
		@advert = Advert.find(params[:id])
	end

	def new
		@advert = Advert.new
	end

	def edit
	end

	def create
		@advert = Advert.new(advert_params)

	    respond_to do |format|
	      if @advert.save
	        format.html { redirect_to @advert, notice: 'Advert was successfully created.' }
	        format.json { render action: 'show', status: :created, location: @advert }
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @advert.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
		 @advert.destroy
	    redirect_to :back
	end


	private
    # Use callbacks to share common setup or constraints between actions.
    def set_advert
      @advert = Advert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advert_params
      params.require(:advert).permit(:title, :description, :advert_type, :price, :category_id, :img_url, :user_id, :img_file_name_file_name, :img_file_name_content_type, :img_file_name_file_size, :img_file_name_updated_at)
    end

end
