module Comps

  # EST
  ATS = "A-Town Showdown"
  MAYHEM = "Miami Mayhem"
  DRD = "Dola Re Dandiya"
  MASTI = "Maryland Masti"
  RCR = "River City Raas"
  CHAOS = "Raas Chaos"
  BOR = "Beat of Raas"
  RANGEELO = "Rangeelo Raas"
  CCR = "Charm City Raas"
  # CST
  R2 = "Raas Rave Bhangra Blitz"
  ROYALTY = "Raas Royalty"
  GATEWAY = "Gateway to Raas"
  SPACECITY = "Space City Raas"
  MANIA = "Raas Mania"
  RODEO = "Raas Rodeo"
  DD = "Dandia Dhamaka"
  # PST
  GWA = "Garba With Attitude"
  SANEDO = "San Diego Sanedo"

  def self.list
    list = []
    self.constants.each do |c|
      list.push(self.const_get(c))
    end
    return list
  end

  def self.date_json
    list = []
    self.constants.each do |c|
      list.push({:comp => self.const_get(c), :id => c, :date => self.date_map[c], :future => (c.to_s.titleize+'Pred').constantize.teams.size == 0 ? true : false})
    end
    # [{:comp => ATS, :date => "2018-02-02 12:00:00 -0400"},
    # {:comp => MAYHEM, :date => "2018-02-02 12:00:00 -0400"},
    # {:comp => DRD, :date => "2018-02-02 12:00:00 -0400"},
    # {:comp => MASTI, :date => "2018-02-02 12:00:00 -0400"},
    # {:comp => RCR, :date => "2018-02-09 12:00:00 -0400"},
    # {:comp => CHAOS, :date => "2017-11-17 12:00:00 -0400"},
    # {:comp => BOR, :date => "2018-01-26 12:00:00 -0400"},
    # {:comp => RANGEELO, :date => "2018-02-02 12:00:00 -0400"},
    # {:comp => CCR, :date => "2018-02-16 12:00:00 -0400"},
    # # CST
    # {:comp => R2, :date => "2018-03-02 13:00:00 -0400"},
    # {:comp => ROYALTY, :date => "2018-03-02 13:00:00 -0400"},
    # {:comp => GATEWAY, :date => "2018-02-02 13:00:00 -0400"},
    # {:comp => SPACECITY, :date => "2018-02-02 13:00:00 -0400"},
    # {:comp => MANIA, :date => "2018-02-02 13:00:00 -0400"},
    # {:comp => RODEO, :date => "2018-02-02 13:00:00 -0400"},
    # {:comp => DD, :date => "2018-02-02 13:00:00 -0400"},
    # # PST
    # {:comp => GWA, :date => "2018-02-16 15:00:00 -0400"},
    # {:comp => SANEDO, :date => "2018-02-23 15:00:00 -0400"}]
    return list
  end

  def self.date_map
    {:ATS => "2018-02-02 12:00:00 -0400",
    :MAYHEM => "2018-02-02 12:00:00 -0400",
    :DRD => "2018-02-02 12:00:00 -0400",
    :MASTI => "2018-02-02 12:00:00 -0400",
    :RCR => "2018-02-09 12:00:00 -0400",
    :CHAOS => "2017-11-17 12:00:00 -0400",
    :BOR => "2018-01-26 12:00:00 -0400",
    :RANGEELO => "2018-02-02 12:00:00 -0400",
    :CCR => "2018-02-16 12:00:00 -0400",
    # CST
    :R2 => "2018-03-02 13:00:00 -0400",
    :ROYALTY => "2018-03-02 13:00:00 -0400",
    :GATEWAY => "2018-02-02 13:00:00 -0400",
    :SPACECITY => "2018-02-02 13:00:00 -0400",
    :MANIA => "2018-02-02 13:00:00 -0400",
    :RODEO => "2018-02-02 13:00:00 -0400",
    :DD => "2018-02-02 13:00:00 -0400",
    # PST
    :GWA => "2018-02-16 15:00:00 -0400",
    :SANEDO => "2018-02-23 15:00:00 -0400"}
  end

end
