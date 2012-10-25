class FundingPagesController < ApplicationController
  # GET /funding_pages
  # GET /funding_pages.json
  def index
    @funding_pages = FundingPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @funding_pages }
    end
  end

  # GET /funding_pages/1
  # GET /funding_pages/1.json
  def show
    @funding_page = FundingPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @funding_page }
    end
  end

  # GET /funding_pages/new
  # GET /funding_pages/new.json
  def new
    @funding_page = FundingPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @funding_page }
    end
  end

  # GET /funding_pages/1/edit
  def edit
    @funding_page = FundingPage.find(params[:id])
  end

  # POST /funding_pages
  # POST /funding_pages.json
  def create
    @funding_page = current_user.funding_pages.build(params[:funding_page])

    respond_to do |format|
      if @funding_page.save
        format.html { redirect_to @funding_page, notice: 'Funding page was successfully created.' }
        format.json { render json: @funding_page, status: :created, location: @funding_page }
      else
        format.html { render action: "new" }
        format.json { render json: @funding_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /funding_pages/1
  # PUT /funding_pages/1.json
  def update
    @funding_page = FundingPage.find(params[:id])

    respond_to do |format|
      if @funding_page.update_attributes(params[:funding_page])
        format.html { redirect_to @funding_page, notice: 'Funding page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @funding_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /funding_pages/1
  # DELETE /funding_pages/1.json
  def destroy
    @funding_page = FundingPage.find(params[:id])
    @funding_page.destroy

    respond_to do |format|
      format.html { redirect_to funding_pages_url }
      format.json { head :no_content }
    end
  end
end
