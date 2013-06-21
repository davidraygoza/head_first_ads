class AdsController < ApplicationController
    def show 
      @ad= Ad.find(params[:id])
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @ad }
       end
    end
    def index
       @ads = Ad.all

        respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @ad }
        end
      end
    def new
        @ad=Ad.new
    end
    def create
        @ad=Ad.new(params[:ad])
        @ad.save
        redirect_to "/ads/#{@ad.id}"
    end
end
