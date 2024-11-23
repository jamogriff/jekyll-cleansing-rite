require 'htmlbeautifier'

module Jekyll
  module CleansingRite
    class Ritual
      attr_reader :logger

      def initialize(logger)
        @logger = logger
        @logger.debug("Invocation:", "#{self.class.name.split('::').last} has been instantiated")
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
