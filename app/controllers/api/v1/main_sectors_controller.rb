# frozen_string_literal: true

module Api
  module V1
    # stock local controller
    class MainSectorsController < ApplicationController
      before_action :set_main_sector, only: %i[show update destroy]

      # GET /main_sectors
      def index
        @main_sectors = MainSector.all

        render json: @main_sectors
      end

      # GET /main_sectors/1
      def show
        render json: @main_sector
      end

      # POST /main_sectors
      def create
        @main_sector = MainSector.new(main_sector_params)

        if @main_sector.save
          render json: @main_sector, status: :created, location: @main_sector
        else
          render json: @main_sector.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /main_sectors/1
      def update
        if @main_sector.update(main_sector_params)
          render json: @main_sector
        else
          render json: @main_sector.errors, status: :unprocessable_entity
        end
      end

      # DELETE /main_sectors/1
      def destroy
        @main_sector.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_main_sector
        @main_sector = MainSector.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def main_sector_params
        params.require(:main_sector).permit(:sector_name)
      end
    end
  end
end
