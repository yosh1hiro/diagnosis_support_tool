class DiagnosesController < ApplicationController
  def index
    @cheif_complaints = Disease.select(:cheif_complaint).distinct
    @diseases = Disease.where("cheif_complaint = ?", params[:cheif_complaint])
    @pre_odds 
    @post_odds
    @dis = Disease.all
  end
end
