class ChildSubCategoriesController < ApplicationController
  before_action :set_child_sub_category, only: [:show, :edit, :update, :destroy]

  #before_action :anthenticate_user!
  # GET /child_sub_categories
  # GET /child_sub_categories.json
  def index
    @child_sub_categories = ChildSubCategory.all
  end

  # GET /child_sub_categories/1
  # GET /child_sub_categories/1.json
  def show
  end

  # GET /child_sub_categories/new
  def new
    @child_sub_category = ChildSubCategory.new
  end

  # GET /child_sub_categories/1/edit
  def edit
  end

  # POST /child_sub_categories
  # POST /child_sub_categories.json
  def create
    @child_sub_category = ChildSubCategory.new(child_sub_category_params)

    respond_to do |format|
      if @child_sub_category.save
        format.html { redirect_to @child_sub_category, notice: 'Child sub category was successfully created.' }
        format.json { render :show, status: :created, location: @child_sub_category }
      else
        format.html { render :new }
        format.json { render json: @child_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child_sub_categories/1
  # PATCH/PUT /child_sub_categories/1.json
  def update
    respond_to do |format|
      if @child_sub_category.update(child_sub_category_params)
        format.html { redirect_to @child_sub_category, notice: 'Child sub category was successfully updated.' }
        format.json { render :show, status: :ok, location: @child_sub_category }
      else
        format.html { render :edit }
        format.json { render json: @child_sub_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_sub_categories/1
  # DELETE /child_sub_categories/1.json
  def destroy
    @child_sub_category.destroy
    respond_to do |format|
      format.html { redirect_to child_sub_categories_url, notice: 'Child sub category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child_sub_category
      @child_sub_category = ChildSubCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_sub_category_params
      params.require(:child_sub_category).permit(:name, :descriptions, :slug, :category_id, :subcategory_id)
    end
end
