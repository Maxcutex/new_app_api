# module Api
module Api
  # module v1
  module V1
    class StructureTypesController < ApiController
      before_action :set_structure_type, only: [:show, :update, :destroy]

      # GET /structure_types
      def index
        @structure_types = StructureType.all

        render json: @structure_types
      end

      # GET /structure_types/1
      def show
        render json: @structure_type
      end

      # POST /structure_types
      def create
        @structure_type = StructureType.new(structure_type_params)

        if @structure_type.save
          render json: @structure_type, status: :created, location: @structure_type
        else
          render json: @structure_type.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /structure_types/1
      def update
        if @structure_type.update(structure_type_params)
          render json: @structure_type
        else
          render json: @structure_type.errors, status: :unprocessable_entity
        end
      end

      # DELETE /structure_types/1
      def destroy
        @structure_type.destroy
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_structure_type
          @structure_type = StructureType.find(params[:id])
        end

        # Only allow a trusted parameter "white list" through.
        def structure_type_params
          params.require(:structure_type).permit(:structure_type_name, :description, :parent_id, :is_active)
        end
    end
  end
end
