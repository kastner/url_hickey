class UnittestsController < ApplicationController
  in_place_edit_for :unittest, :title
  # GET /unittests
  # GET /unittests.xml
  def index
    @unittests = Unittest.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unittests }
    end
  end

  # GET /unittests/1
  # GET /unittests/1.xml
  def show
    @unittest = Unittest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unittest }
    end
  end

  # GET /unittests/new
  # GET /unittests/new.xml
  def new
    @unittest = Unittest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unittest }
    end
  end

  # GET /unittests/1/edit
  def edit
    @unittest = Unittest.find(params[:id])
  end

  # POST /unittests
  # POST /unittests.xml
  def create
    @unittest = Unittest.new(params[:unittest])

    respond_to do |format|
      if @unittest.save
        flash[:notice] = 'Unittest was successfully created.'
        format.html { redirect_to(@unittest) }
        format.xml  { render :xml => @unittest, :status => :created, :location => @unittest }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unittest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unittests/1
  # PUT /unittests/1.xml
  def update
    @unittest = Unittest.find(params[:id])

    respond_to do |format|
      if @unittest.update_attributes(params[:unittest])
        flash[:notice] = 'Unittest was successfully updated.'
        format.html { redirect_to(@unittest) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unittest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unittests/1
  # DELETE /unittests/1.xml
  def destroy
    @unittest = Unittest.find(params[:id])
    @unittest.destroy

    respond_to do |format|
      format.html { redirect_to(unittests_url) }
      format.xml  { head :ok }
    end
  end
end
