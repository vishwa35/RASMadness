class AtsPred < Prediction
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
end
