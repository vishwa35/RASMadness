module Compdt

  # EST
  ATS = "2018-02-02 16:00:00"
  MAYHEM = "2018-02-02 12:00:00"
  DRD = "2018-02-02 16:00:00"
  MASTI = "2018-02-02 16:00:00"
  RCR = "2018-02-09 16:00:00"
  CHAOS = "2017-11-17 16:00:00"
  BOR = "2018-01-26 16:00:00"
  RANGEELO = "2018-02-02 16:00:00"
  CCR = "2018-02-16 16:00:00"
  # CST
  R2 = "2018-03-02 17:00:00"
  ROYALTY = "2018-03-02 17:00:00"
  GATEWAY = "2018-02-02 17:00:00"
  SPACECITY = "2018-02-02 17:00:00"
  MANIA = "2018-02-02 17:00:00"
  RODEO = "2018-02-02 17:00:00"
  DD = "2018-02-02 17:00:00"
  # PST
  GWA = "2018-02-16 19:00:00"
  SANEDO = "2018-02-23 17:00:00"

  def self.list
    list = []
    self.constants.each do |c|
      list.push(self.const_get(c))
    end
    return list
  end
end
