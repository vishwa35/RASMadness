class ChaosPred < Prediction

  def self.teams
    Set.new [Teams::GT,
    Teams::UMBC,
    Teams::UVA,
    Teams::EMORY,
    Teams::RU,
    Teams::UMD,
    Teams::UT,
    Teams::VCU]
  end

  def self.placings
    [Teams::UVA, Teams::UMBC, Teams::UT]
  end

  # TODO: first second and third cannot contain duplicates

  # TODO: don't creaate 2 records of same uid. update if already exists. this is probably in controller.




end
