class ApiController < ApplicationController
  require_relative '../helpers/comps.rb'
  require_relative '../helpers/compdt.rb'
  require_relative '../helpers/teams.rb'

  def comps_display_old
      # curl -X GET http://localhost:3000/comps_display
      render :json => Comps.date_json
  end

  def comps_display
      # curl -X POST -d "uid=1" http://localhost:3000/comps_display
      list = []
      Comps.constants.each do |c|
        comp_class = (c.to_s.titleize+'Pred').constantize
        list.push({:comp => Comps.const_get(c), :teams => comp_class.teams, :id => c, :date => Comps.date_map[c], :user_preds => comp_class.where(uid: params[:uid]).first})
      end
      render :json => list
  end

  def get_team_list_old
    #curl -X POST -d "Chaos" http://localhost:3000/comp_teams
    teams = (request.body.read.to_s.titleize + 'Pred').constantize.teams
    render :json => teams
  end

  def get_team_list
    #curl -X POST -d "comp=Chaos&uid=1" http://localhost:3000/comp_teams
    comp_class = (params[:comp].to_s.titleize + 'Pred').constantize
    teams = comp_class.teams
    pred = comp_class.where(uid: params[:uid]).first
    render :json => {teams: teams, preds: pred}
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
    id = params[:uid]
    record = (params[:comp].to_s.titleize + 'Pred').constantize.where(uid: id).first
    render :json => record
  end

  def save_preds
    #curl -X POST -d "comp=CHAOS&first=GT Ramblin' Raas&second=UMBC Raascals&third=VCU Ricochet Raas&uid=5" http://localhost:3000/save_preds
    uid = params[:uid]
    comp_class = (params[:comp].to_s.titleize + 'Pred').constantize
    if (comp_class.where(uid: uid).first.nil?)
      record = comp_class.create(uid: uid, first:  params[:first], second: params[:second], third: params[:third])
      success = record.id.nil? ? false : true
    else
      success = comp_class.where(uid: uid).first.update(first:  params[:first], second: params[:second], third: params[:third])
    end
    render :json => success
  end

  def get_standings
    #curl -X POST -d "uid=5" http://localhost:3000/get_standings
    uid = params[:uid]
    table_data = []
    User.all.each do |user|
      table_data.push({name: user.try(:full_name), points: user.try(:points), team: user.try(:team_affiliation)})
    end
    render :json => {team: User.find(uid).try(:team_affiliation), table_data: table_data}
  end
end
