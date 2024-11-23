module Jekyll
  module CleansingRite
    class DocumentRitual < Ritual

      def initialize(logger)
        super
      end

      def perform(doc)
        @logger.debug('Cleansing Spirit:', doc.relative_path)
        doc.output = self.cleanse(doc.output)
      end

    end
  end
end

