class NousarmicropostsController < ApplicationController
  # GET /Nousarmicroposts
  # GET /Nousarmicroposts.json
  def index
    @nousarmicroposts = Nousarmicropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nousarmicroposts }
    end
  end

  # GET /Nousarmicroposts/1
  # GET /Nousarmicroposts/1.json
  def show
    @nousarmicropost = Nousarmicropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nousarmicropost }
    end
  end

  # GET /Nousarmicroposts/new
  # GET /Nousarmicroposts/new.json
  def new
    @nousarmicropost = Nousarmicropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nousarmicropost }
    end
  end

  # GET /Nousarmicroposts/1/edit
  def edit
    @nousarmicropost = Nousarmicropost.find(params[:id])
  end

  # POST /Nousarmicroposts
  # POST /Nousarmicroposts.json
  def create
    @nousarmicropost = Nousarmicropost.new(params[:nousarmicropost])

    respond_to do |format|
      if @nousarmicropost.save
        format.html { redirect_to @nousarmicropost, notice: 'Nousarmicropost was successfully created.' }
        format.json { render json: @nousarmicropost, status: :created, location: @nousarmicropost }
      else
        format.html { render action: "new" }
        format.json { render json: @nousarmicropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Nousarmicroposts/1
  # PUT /Nousarmicroposts/1.json
  def update
    @nousarmicropost = Nousarmicropost.find(params[:id])

    respond_to do |format|
      if @nousarmicropost.update_attributes(params[:nousarmicropost])
        format.html { redirect_to @nousarmicropost, notice: 'Nousarmicropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nousarmicropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Nousarmicroposts/1
  # DELETE /Nousarmicroposts/1.json
  def destroy
    @nousarmicropost = Nousarmicropost.find(params[:id])
    @nousarmicropost.destroy

    respond_to do |format|
      format.html { redirect_to microposts_url }
      format.json { head :no_content }
    end
  end
end
