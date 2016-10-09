class HandlersController < ApplicationController
  def scerb
    @color = params[:color]
    @percentage = params[:percentage]
    render layout: false
  end

  def integration
    query = request.query_parameters
    query.each do |p|
      puts p
    end
    render layout: false
  end
end
