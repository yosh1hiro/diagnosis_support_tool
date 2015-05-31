class WelcomeController < ApplicationController
  def index
    @diseases = Disease.all
  end
end
