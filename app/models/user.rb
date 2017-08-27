class User < ActiveRecord::Base
  require_relative '../helpers/comps.rb'

  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.com)\z/
  validates_uniqueness_of :email

  def self.update_points
    self.all.each do |user|
      points = 0
      Comps.constants.each do |comp|
        comp_class = (comp.to_s.titleize + "Pred").constantize
        record = comp_class.where(uid: user.id).try(:first)
        points += record.points if !record.nil?
      end
      user.update(points: points)
    end
  end

end
