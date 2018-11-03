class HotelsController < ApplicationController
    before_action :set_hotel, only: [:show, :update, :destroy]
  
    # GET /hotels
    def index
      @hotels = Hotel.all
      json_response(@hotels)
    end
  
    # POST /hotels
    def create
      @hotel = Hotel.create!(hotel_params)
      json_response(@hotel, :created)
    end
  
    # GET /hotels/:id
    def show
      json_response(@hotel)
    end
  
    # PUT /hotels/:id
    def update
      @hotel.update(hotel_params)
      head :no_content
    end
  
    # DELETE /hotels/:id
    def destroy
      @hotel.destroy
      head :no_content
    end
  
    private
  
    def hotel_params
      # whitelist params
      params.permit(:title, :created_by)
    end
  
    def set_hotel
      @hotel = Hotel.find(params[:id])
    end
  end