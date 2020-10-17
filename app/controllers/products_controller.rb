class ProductsController < ApplicationController

  def index
    if params[:next]
      if params.fetch(:page).to_i > 4
        @page = 0
      else
        @page = params.fetch(:page).to_i 
      end
    elsif params[:back]
      if params.fetch(:page).to_i < 0
        @page = 4
      else
        @page = params.fetch(:page).to_i
      end
    else
      @page = params.fetch(:page, 0).to_i
    end
    puts "#{@page}"
    @products = Product.offset(@page * 10).limit(10)
    render :index
  end

  def new
    @product = Product.new
    render :new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
    render :edit
  end

  def show
    @product = Product.find(params[:id])
    render :show
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      flash[:notice] = "Product successfully updated!"
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product successfully deleted!"
    redirect_to products_path
  end

  def hello
    puts "hello"
  end

  private
  def product_params
    params.require(:product).permit(:name, :cost, :country_of_origin)
  end

end