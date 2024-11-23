module Jekyll
  module CleansingRite
    class PageRitual < Ritual

      def initialize(logger)
        super
      end

      def perform(page)
        @logger.debug('Cleansing Spirit:', page.name)
        page.output = self.cleanse(page.output)
      end

    end
  end
end

