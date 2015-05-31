class DiseasesController < ApplicationController

  def index 
    @diseases = Disease.all
  end

  def show
    @disease = Disease.find(params[:id])
  end

  def new
    @disease = Disease.new
  end

  def create
    @disease = Disease.new(disease_params)

    respond_to do |format|
      if @disease.save
        format.html { redirect_to @disease, notice: '疾患の登録が完了しました'  }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @disease.update(food_params)
        format.html { redirect_to @disease, notice: '疾患の編集が完了しました' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @disease.destroy
    respond_to do |format|
      format.html { redirect_to diseases_url, notice: '疾患を削除しました' }
    end
  end

  private
    def set_disease
      @disease = Disease.find(params[:id])
    end

    def disease_params
      params.require(:disease).permit(:name, :cheif_complaint, :pretest_probability)
    end

end
