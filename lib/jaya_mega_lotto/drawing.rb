module JayaMegaLotto
  class Drawing
    attr_accessor :config

    def initialize(config = Configuration.new)
      @config = config
    end

    def draw
      JayaMegaLotto.configuration.drawing_count.times.map { single_draw }
      # using local configuration instead of global setting
      # config.drawing_count.times.map { single_draw }
    end

    private

    def single_draw
      rand(0..60)
    end
  end
end
