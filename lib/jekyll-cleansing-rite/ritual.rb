#Jekyll::External.require_with_graceful_fail 'htmlbeautifier'
require 'htmlbeautifier'
require 'pry'

module Jekyll
  module CleansingRite
    binding.pry
    class Ritual
      HERETICAL_FILETYPE = '.html'

      attr_reader :logger

      def initialize(logger)
        @logger = logger
        @logger.debug("The Machine Spirit has allowed a #{self.class} to be invoked")
      end

      def perform(file)
        raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
      end

      protected

      def cleanse(uncleansed_html)
        HtmlBeautifier.beautify(uncleansed_html)
      end

    end
  end
end
