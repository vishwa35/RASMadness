class Prediction < ActiveRecord::Base
  self.abstract_class = true

  # TODO: first second and third cannot contain duplicates

  # TODO: don't creaate 2 records of same uid. update if already exists. this is probably in controller.

  def self.teams
    Set.new []
  end

  def self.placings
    []
  end

  # validates :first, inclusion: {in: teams}
  # validates :second, inclusion: {in: teams}
  # validates :third, inclusion: {in: teams}

  def placing_validation
    self.placings.each do |p|
      if not self.teams.include?(p)
        return false
      end
    end
    return true
  end

  def self.calc_points
    self.all.each do |pred|
      temp = 0
      if pred.first == placings[0]
        temp += 2
      elsif self.placings.include?(pred.first)
        temp += 1
      end

      if pred.second == self.placings[1]
        temp += 2
      elsif self.placings.include?(pred.second)
        temp += 1
      end

      if pred.third == self.placings[2]
        temp += 2
      elsif self.placings.include?(pred.third)
        temp += 1
      end
      pred.update(points: temp)
    end
  end
end
