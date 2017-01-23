class Complement
  def self.of_dna dna
    return '' unless /^[GCTA]+$/.match(dna)
    dna.tr("GCTA", "CGAU")
  end
end

module BookKeeping
  VERSION = 4
end
