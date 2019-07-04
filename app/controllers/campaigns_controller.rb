class CampaignsController < ApplicationController
  include Trailblazer::Rails::Controller
  
  def index
    result = run Campaign::Index
    render json: result[:model]
  end

  def create
    result = run Campaign::Create
    if result.success?
      render json: result['model']
    else
      render json: "Create Campaign Failed: #{result[:error]}"
    end
  end

  def show
    result = run Campaign::Show
    render json: result['model']
  end

  def update
    result = run Campaign::Update
    if result.success?
      render json: result['model']
    else
      render json: "Update Campaign Failed: #{result[:error]}"
    end
  end

  def destroy
    result = run Campaign::Delete
    render json: "Campaign deleted"
  end
end
