class BeerItemsController < ApplicationController
  before_action :set_beer_item, only: %i[ show edit update destroy ]

  # GET /beer_items or /beer_items.json
  def index
    @beer_items = BeerItem.all
  end

  # GET /beer_items/1 or /beer_items/1.json
  def show
  end

  # GET /beer_items/new
  def new
    @beer_item = BeerItem.new
  end

  # GET /beer_items/1/edit
  def edit
  end

  # POST /beer_items or /beer_items.json
  def create
    @beer_item = BeerItem.new(beer_item_params)

    respond_to do |format|
      if @beer_item.save
        format.html { redirect_to beer_item_url(@beer_item), notice: "Beer item was successfully created." }
        format.json { render :show, status: :created, location: @beer_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @beer_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_items/1 or /beer_items/1.json
  def update
    respond_to do |format|
      if @beer_item.update(beer_item_params)
        format.html { redirect_to beer_item_url(@beer_item), notice: "Beer item was successfully updated." }
        format.json { render :show, status: :ok, location: @beer_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @beer_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_items/1 or /beer_items/1.json
  def destroy
    @beer_item.destroy

    respond_to do |format|
      format.html { redirect_to beer_items_url, notice: "Beer item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_item
      @beer_item = BeerItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beer_item_params
      params.require(:beer_item).permit(:beer_name, :brewery, :description, :ibu)
    end
end
