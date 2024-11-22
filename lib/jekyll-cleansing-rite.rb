require 'jekyll-cleansing-rite/ritual'
require 'jekyll-cleansing-rite/page_ritual'
require 'jekyll-cleansing-rite/document_ritual'
require 'pry'

module Jekyll
  module CleansingRite
    #require 'rite_of_cleansing/ritual'
    # autoload :HtmlBeautifier, 'htmlbeautifier'

    attr_reader :page_ritual, :document_ritual

    def self.manifest_page_ritual()
      @page_ritual ||= PageRitual.new(Jekyll.logger)
    end

    def self.manifest_document_ritual()
      @document_ritual ||= DocumentRitual.new(Jekyll.logger)
    end
  end
end

Jekyll::Hooks.register :pages, :post_render do |page|
  ritual = Jekyll::CleansingRite.manifest_page_ritual()
  ritual.perform(page);
end

Jekyll::Hooks.register :documents, :post_render do |doc|
  ritual = Jekyll::CleansingRite.manifest_document_ritual()
  ritual.perform(doc)
end

