class ApiController < ApplicationController
  require_relative '../helpers/comps.rb'
  require_relative '../helpers/compdt.rb'
  require_relative '../helpers/teams.rb'

  def comps_display
      # curl -X GET http://localhost:3000/comps_display
      render :json => Comps.date_json
  end

  def get_team_list
    #curl -X POST -d "Chaos" http://localhost:3000/comp_teams
    teams = (request.body.read.to_s.titleize + 'Pred').constantize.teams
    render :json => teams
  end

  def get_user
    #curl -X POST -d "email=test@gmail.com&name=test user" http://localhost:3000/get_user
    user = User.find_by(email: params[:email])
    if (user.nil?)
      user = User.create!(email: params[:email], full_name: params[:name], photo: params[:image])
    end
    render :json => user
  end

  def id_get_user
    #curl -X POST -d "id=1"http://localhost:3000/id_get_user
    user = User.find_by(id: params[:id])
    if user.nil?
      render :json => "error"
    else
      render :json => user
    end
  end

  def save_profile
    #curl -X POST -d "id=6&team=some team&pred=true" http://localhost:3000/save_profile
    user = User.find(params[:id])
    if user.nil?
      render :json => "false"
    end
    user.update(team_affiliation: params[:team], predictions_bool: params[:pred])
    render :json => user
  end

  def get_preds
    #curl -X POST -d "id=1&comp=CHAOS" http://localhost:3000/get_preds
    id = params[:id]
    record = (params[:comp].to_s.titleize + 'Pred').constantize.where(uid: id).first
    render :json => record
  end
end
