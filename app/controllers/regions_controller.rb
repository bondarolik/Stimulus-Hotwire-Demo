class RegionsController < ApplicationController
  def countries
    @countries = Country.all

    render json: @countries.pluck(:id, :name)
  end

  def states
    # ID => country_id
    #
    if params[:id].present?
      @states = State.where(country_id: params[:id])
    else
      @states = State.all
    end

    render json: @states.pluck(:id, :name)
  end
end
