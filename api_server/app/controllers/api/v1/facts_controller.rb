class Api::V1::FactsController < ApplicationController
    before_action :find_fact, only: [:show, :update, :destroy]

    # GET /api/v1/users/:user_id/facts
    def index
        @facts = Fact.all
        render json: @facts
    end

    # GET /api/v1/users/:user_id/facts/:id
    def show
        render json: @fact
    end

    # POST /api/v1/users/:user_id/facts
    def create
        @fact = Fact.new(fact_params)
        if @fact.save
            render json: @fact
        else
            render error: { error: 'Unable to create fact.'}, status: 400
        end
    end

    # PUT /api/v1/users/:user_id/facts/:id
    def update
        if @fact
            @fact.update(fact_params)
            render json: { messsage: 'Fact successfully updated.'}, status: 200
        else
            render json: { error: 'Unable to update fact.'}, status: 400
        end
    end


    # DELETE /api/v1/users/:user_id/facts/:id
    def destroy
        if @fact
            @fact.destroy
            render json: { message: 'Fact successfully deleted.'}, status: 200
        else
            render json: { error: 'Unable to delete fact' }, status: 400
        end
    end


    private

    def fact_params
        params.require(:fact).permit(:fact, :likes, :user_id)
    end

    def find_fact
        @fact = Fact.find(params[:id])
    end
end
