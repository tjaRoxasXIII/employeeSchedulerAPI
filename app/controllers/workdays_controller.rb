require 'pry'
class WorkdaysController < ApplicationController
    skip_before_action :verify_authenticity_token

    def new
        @workday = Workday.new
    end

    def create
            @workday = Workday.create(workday_parameters)
    end

    def index
        @workdays = Workday.all
        render json: @workdays
    end

    def show
        @workday = Workday.find_by(id: params[:id])
        render json: @workday
    end

    private

    def workday_parameters
        params.permit(:date, :start_hour, :start_min, :start_am_or_pm, :end_hour, :end_min, :end_am_or_pm, :user_id)
    end
end
