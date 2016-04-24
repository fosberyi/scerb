class HandlersController < ApplicationController
  def scerb
    @color = params[:color]
    @percentage = params[:percentage]
    render layout: false
  end
end
