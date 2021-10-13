class DistrictsController < ApplicationController

    def index
        @districts = District.all
        render json: @districts
    end

    def show
        @districts = District.find(params[:id])
        render json: @districts
    end
end
