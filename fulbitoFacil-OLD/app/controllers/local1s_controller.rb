class Local1sController < ApplicationController
  # GET /local1s
  # GET /local1s.json
  def index
    @local1s = Local1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @local1s }
    end
  end

  # GET /local1s/1
  # GET /local1s/1.json
  def show
    @local1 = Local1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @local1 }
    end
  end

  # GET /local1s/new
  # GET /local1s/new.json
  def new
    @local1 = Local1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @local1 }
    end
  end

  # GET /local1s/1/edit
  def edit
    @local1 = Local1.find(params[:id])
  end

  # POST /local1s
  # POST /local1s.json
  def create
    @local1 = Local1.new(params[:local1])

    respond_to do |format|
      if @local1.save
        format.html { redirect_to @local1, notice: 'Local1 was successfully created.' }
        format.json { render json: @local1, status: :created, location: @local1 }
      else
        format.html { render action: "new" }
        format.json { render json: @local1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /local1s/1
  # PUT /local1s/1.json
  def update
    @local1 = Local1.find(params[:id])

    respond_to do |format|
      if @local1.update_attributes(params[:local1])
        format.html { redirect_to @local1, notice: 'Local1 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @local1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local1s/1
  # DELETE /local1s/1.json
  def destroy
    @local1 = Local1.find(params[:id])
    @local1.destroy

    respond_to do |format|
      format.html { redirect_to local1s_url }
      format.json { head :ok }
    end
  end
end
