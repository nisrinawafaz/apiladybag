class StatusesController < ApplicationController

    def index
        @statuses = Status.all
        render json: @statuses
    end

    def show
        @statuses = Status.find(params[:id])
        render json: @statuses
    end
end
