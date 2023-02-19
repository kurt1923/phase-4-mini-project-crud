class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices
    end

    def show
        spice = Spice.find(params[:id])
        render json: spice
    end

    def create
        spice = Spice.create(spice_params)
        render json: spice
    end

    def update
        spice = Spice.find(params[:id])
        spice.update(spice_params)
        render json: spice
    end

    def destroy
        spice = Spice.find(params[:id])
        spice.destroy
        render json: spice
    end

private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end
    
end
