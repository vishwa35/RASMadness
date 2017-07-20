class Competition < ActiveRecord::Base
  self.abstract_class = true

  validate :prediction_validation

  @@teams = [1, 2, 3]
  @@placings = [1, 2, 3]

  def prediction_validation
    if @@teams.include?(first) and @@teams.include?(second) and @@teams.include?(third)
      return true
    end
    errors.add(:first, "teams must be competing in this comp")
    return false
  end


  def placing_validation
    @@placings.each do |p|
      if not @@teams.include?(p)
        return false
      end
    end
    return true
  end

  def self.calc_points
    self.all.each do |pred|
      temp = 0
      if pred.first == @@placings[0]
        temp += 0
      elsif @@placings.include?(pred.first)
        temp += 0
      end

      if pred.second == @@placings[1]
        temp += 0
      elsif @@placings.include?(pred.second)
        temp += 0
      end

      if pred.third == @@placings[2]
        temp += 0
      elsif @@placings.include?(pred.third)
        temp += 0
      end
      pred.update(points: temp)
    end
  end
end
