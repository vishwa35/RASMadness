class User < ActiveRecord::Base

  validates_format_of :email, :with => /\A[^@\s]+@([^@\s]+\.com)\z/
  validates_uniqueness_of :email

  def self.update_points
    self.all.each do |user|
      points = ChaosComp.where(uid: self.id).first.points
      # points += ChaosComp.where(uid: self.id).first.points
      # points += ChaosComp.where(uid: self.id).first.points
      # points += ChaosComp.where(uid: self.id).first.points
      # points += ChaosComp.where(uid: self.id).first.points
      # points += ChaosComp.where(uid: self.id).first.points
    end
  end

end
