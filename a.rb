class Caramel
  attr_accessor :name, :story, :found_at,
                :judgemental_stare_intensity, :adopted

  def initialize(name:, story:, found_at:,
                 judgemental_stare_intensity:, adopted:)
    @name = name
    @story = story
    @found_at = found_at
    @judgemental_stare_intensity = judgemental_stare_intensity
    @adopted = adopted
  end
end

