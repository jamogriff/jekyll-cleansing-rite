#require 'ritual'

require 'pry'
module Jekyll
  module CleansingRite
    binding.pry
    class DocumentRitual < Ritual

      def initialize(logger)
        super
      end

      def perform(page)
        if document.output_ext === HERETICAL_FILETYPE
          @logger.debug('Cleansing Spirit:', document.relative_path)
          document.output = self.cleanse(document.output)
        end
      end

    end
  end
end

