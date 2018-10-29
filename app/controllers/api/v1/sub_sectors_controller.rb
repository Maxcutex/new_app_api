# frozen_string_literal: true

module Api
  module V1
    # stock local controller
    class SubSectorsController < ApplicationController
      before_action :set_sub_sector, only: %i[show update destroy]

      # GET /sub_sectors
      def index
        @sub_sectors = SubSector.all

        render json: @sub_sectors
      end

      # GET /sub_sectors/1
      def show
        render json: @sub_sector
      end

      # POST /sub_sectors
      def create
        @sub_sector = SubSector.new(sub_sector_params)

        if @sub_sector.save
          render json: @sub_sector, status: :created, location: @sub_sector
        else
          render json: @sub_sector.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /sub_sectors/1
      def update
        if @sub_sector.update(sub_sector_params)
          render json: @sub_sector
        else
          render json: @sub_sector.errors, status: :unprocessable_entity
        end
      end

      # DELETE /sub_sectors/1
      def destroy
        @sub_sector.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_sub_sector
        @sub_sector = SubSector.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def sub_sector_params
        params.require(:sub_sector).permit(:sub_sector_name, :main_sector_id)
      end
    end
  end
end
