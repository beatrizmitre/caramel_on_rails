class CaramelsController < ApplicationController
  def index
    @caramels = Caramel.all
  end

  def show
    @caramel = Caramel.find(params[:id])
  end

  def new
    @caramel = Caramel.new
  end

  def create
    @caramel = Caramel.new(caramel_params)

    if @caramel.save
      redirect_to caramel_path(@caramel)
    else
      render :new
    end
  end

  def edit
    @caramel = Caramel.find(params[:id])
  end

  def update
    @caramel = Caramel.find(params[:id])

    if @caramel.update(caramel_params)
      redirect_to caramel_path(@caramel)
    else
      render :edit
    end
  end

  def destroy
    @caramel = Caramel.find(params[:id])
    @caramel.destroy
    redirect_to caramels_path
  end

  private

  def caramel_params
    params.require(:caramel).permit(:name, :adopted, :judgemental_stare_intensity, :found_at, :story)
  end
end
