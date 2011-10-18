class HomeController < ApplicationController
  def index
  end
  
  def shop
  # Method borrowed from garments#index
    @garments = Garment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @garments }
    end

  end
  def list
  # Method borrowed from garments#new
    @garment = Garment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @garment }
    end
  end

end
