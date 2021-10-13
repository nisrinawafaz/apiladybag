class ImagesController < ApplicationController

    def index
        @images = Image.all
        render json: @images
    end

    def show
        @images = Image.find(params[:id])
        render json: @images
    end
end
