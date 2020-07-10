class VegetablesController < ApplicationController
    before_action :set_vegetable, only: [:show, :edit, :update, :destroy]

    def index
        @vegetables = Vegetable.all
    end

    def show
    end

    def new
        @vegetable = Vegetable.new
    end

    def edit

    end

    def update
        @vegetable.update(strong_params)
        redirect_to @vegetable
    end

    def create
        vegetable = Vegetable.create(strong_params)
        redirect_to vegetable
    end

    def destroy
        @vegetable.destroy
        redirect_to vegetables_path
    end

    private

    def set_vegetable
        @vegetable = Vegetable.find(params[:id])
    end

    def strong_params
        params.require(:vegetable).permit(:name, :plant_date, :color, :size)
    end

end
