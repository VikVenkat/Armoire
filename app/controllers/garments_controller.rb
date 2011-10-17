class GarmentsController < ApplicationController
  # GET /garments
  # GET /garments.xml
  def index
    @garments = Garment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @garments }
    end
  end

  # GET /garments/1
  # GET /garments/1.xml
  def show
    @garment = Garment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @garment }
    end
  end

  # GET /garments/new
  # GET /garments/new.xml
  def new
    @garment = Garment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @garment }
    end
  end

  # GET /garments/1/edit
  def edit
    @garment = Garment.find(params[:id])
  end

  # POST /garments
  # POST /garments.xml
  def create
    @garment = Garment.new(params[:garment])

    respond_to do |format|
      if @garment.save
        format.html { redirect_to(@garment, :notice => 'Garment was successfully created.') }
        format.xml  { render :xml => @garment, :status => :created, :location => @garment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @garment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /garments/1
  # PUT /garments/1.xml
  def update
    @garment = Garment.find(params[:id])

    respond_to do |format|
      if @garment.update_attributes(params[:garment])
        format.html { redirect_to(@garment, :notice => 'Garment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @garment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /garments/1
  # DELETE /garments/1.xml
  def destroy
    @garment = Garment.find(params[:id])
    @garment.destroy

    respond_to do |format|
      format.html { redirect_to(garments_url) }
      format.xml  { head :ok }
    end
  end
end
