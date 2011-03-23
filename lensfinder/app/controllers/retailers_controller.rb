# encoding: utf-8
class RetailersController < ApplicationController
    def index

    @title = 'Återförsäljare'

    @retailers = Retailer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @retailers }
    end
  end

  def show
    @retailer = Retailer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml { render :xml => @retailer }
    end

  end

  def new
    @retailer = Retailer.new

    format.html # new.html.erb
    format.xml { render :xml => @retailer }
  end

  def edit
    @retailer = Retailer.find(params[:id])
  end


  def create
    @retailer = Retailer.new(params[:price])

    respond_to do |format|
      if @retailer.save
        format.html { redirect_to(@retailer, :notice => 'Price was successfully created!') }
        format.xml { render :xml => @retailer, :status => :created, :location => @retailer }
      else
        format.html { render :action => 'new' }
        format.xml { render :xml => @retailer.errors, :status => :unprocessable_entity }
      end
    end

  end

  def update
    @retailer = Retailer.find(params[:id])

    respond_to do |format|
      if @retailer.update_attributes(params[:price])
        format.html { redirect_to(@retailer, :notice => 'Price was successfully updated.') }
        format.xml { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml { render :xml => @retailer.errors, :status => :unprocessable_entity }
      end
    end

  end


  def destroy
    @retailer = Retailer.find(params[:id])
    @retailer.destroy

    respond_to do |format|
      format.html { redirect_to(retailer_url) }
      format.xml { head :ok }
    end
  end
end
