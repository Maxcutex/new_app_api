# frozen_string_literal: true

# module Api
module Api
  # module V1
  module V1
    # Industries controller
    class IndustriesController < ApiController
      before_action :set_industry, only: %i[show update destroy]

      # GET /industries
      def index
        @api_v1_industries = Industry.all
        render json: @api_v1_industries
      end

      # GET /industries/1
      def show
        render json: @api_v1_industry
      end

      # POST /industries
      def create
        
        @api_v1_industry = Industry.new(industry_params)
        if @api_v1_industry.save
          render json: @api_v1_industry, status: :created #, location: @api_v1_industry
        else
          render json: @api_v1_industry.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /industries/1
      def update
        if @api_v1_industry.update(industry_params)
          render json: @api_v1_industry
        else
          render json: @api_v1_industry.errors, status: :unprocessable_entity
        end
      end

      # DELETE /industries/1
      def destroy
        @api_v1_industry.destroy
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_industry
        @api_v1_industry = Industry.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def industry_params
        params.require(:industry)
              .permit(
                :industry_name, :exchange_code,
                :sync_flag, :logo
              )
      end
    end
  end
end
