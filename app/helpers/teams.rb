module Teams
  GT = "GT Ramblin' Raas"
  UH = "UH Roarin' Raas"
  UF = "UF GatoRaas"
  UMBC = "UMBC Raascals"
  UVA = "UVA HooRaas"
  ECU = "ECU PirateRaas"
  TUFTS = "Tufts JumboRaas"
  UCSD = "UCSD Raas Ruckus"
  UCD = "UC Davis Raasleela"
  UCLA = "UCLA Bataka Nu Shaak"
  RU = "RU RAGA"
  UMD = "UMD Entouraas"
  GW = "GW Raas"
  EMORY = "Emory SaRaas"
  UNC = "UNC Tar Heel Raas"
  DUKE = "DBS Raas"
  MIAMI = "U Miami SwaggeRaas"
  IU = "IU HoosierRaas"
  SLU = "SLU Raas"
  UT = "Texas Raas (DSD)"
  UTD = "UTD TaRaas"
  VCU = "VCU Ricochet Raas"

  def self.list
    list = []
    self.constants.each do |c|
      list.push(self.const_get(c))
    end
    return list
  end
end
