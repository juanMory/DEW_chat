class RegpublisController < ApplicationController
  # GET /regpublis
  # GET /regpublis.json
  def index
    @regpublis = Regpubli.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @regpublis }
    end
  end

  # GET /regpublis/1
  # GET /regpublis/1.json
  def show
    @regpubli = Regpubli.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @regpubli }
    end
  end

  # GET /regpublis/new
  # GET /regpublis/new.json
  def new
    @regpubli = Regpubli.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @regpubli }
    end
  end

  # GET /regpublis/1/edit
  def edit
    @regpubli = Regpubli.find(params[:id])
  end

  # POST /regpublis
  # POST /regpublis.json
  def create
    @regpubli = Regpubli.new(params[:regpubli])

    respond_to do |format|
      if @regpubli.save
        format.html { redirect_to @regpubli, notice: 'Regpubli was successfully created.' }
        format.json { render json: @regpubli, status: :created, location: @regpubli }
      else
        format.html { render action: "new" }
        format.json { render json: @regpubli.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /regpublis/1
  # PUT /regpublis/1.json
  def update
    @regpubli = Regpubli.find(params[:id])

    respond_to do |format|
      if @regpubli.update_attributes(params[:regpubli])
        format.html { redirect_to @regpubli, notice: 'Regpubli was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @regpubli.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regpublis/1
  # DELETE /regpublis/1.json
  def destroy
    @regpubli = Regpubli.find(params[:id])
    @regpubli.destroy

    respond_to do |format|
      format.html { redirect_to regpublis_url }
      format.json { head :ok }
    end
  end
end
