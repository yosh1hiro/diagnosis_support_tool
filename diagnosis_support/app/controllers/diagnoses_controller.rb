class DiagnosesController < ApplicationController
  def show
    @cheif_complaint = Disease.select("cheif_complaint")
    @diseases = Disease.where("cheif_complaint = ?", params[:cheif_complaint])
  end
end
