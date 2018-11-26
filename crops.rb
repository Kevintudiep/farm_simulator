


class Crops

@@total_harvest = 0
@@fields = []

  def initialize(crop, hectares, yields)
    @crop = crop
    @hecatres = hectares
    @yields= yields #how much the crop yields
    @@fields << self
  end

  def self.track_fields #track whats in the fields
    @@fields.each do |crop|
      puts crop.crop
    end
  end

  #Status in the menu?
  def self.track_total_harvest #TRacks total food harvested
    return @@total_harvest
  end

  #
  # # harvest method that takes away produce from ALL fields
  # # Iterate through @@fields and find yield
  def self.harvest
    @@fields.each do |field|
      field.harvest
    end
  end

  def crop
    return @crop
  end

  def harvest
    total = @yields * @hecatres
    return total
  end






end

corn = Crops.new('corn', 100, 20)
wheat = Crops.new('wheat', 50, 30)

puts Crops.track_total_harvest

puts corn.harvest
