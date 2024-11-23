require 'jekyll-cleansing-rite/ritual'
require 'jekyll-cleansing-rite/page_ritual'
require 'jekyll-cleansing-rite/document_ritual'

module Jekyll
  module CleansingRite
    VOIDSPACE_RIDDEN_FILETYPE = '.html'

    attr_reader :page_ritual, :document_ritual

    def self.invoke_page_ritual()
      @page_ritual ||= PageRitual.new(Jekyll.logger)
    end

    def self.invoke_document_ritual()
      @document_ritual ||= DocumentRitual.new(Jekyll.logger)
    end

    # Jekyll::Page or Jekyll::Document
    def self.detects_voidspace?(doc_page)
      doc_page.output_ext === VOIDSPACE_RIDDEN_FILETYPE
    end
  end
end

Jekyll::Hooks.register :site, :after_init do |site|
  puts 'Lighting incense: '.rjust(20) + ' Jekyll\'s Machine Spirit is pleased'
end

Jekyll::Hooks.register :pages, :post_render do |page|
  if Jekyll::CleansingRite.detects_voidspace?(page)
    ritual = Jekyll::CleansingRite.invoke_page_ritual()
    ritual.perform(page);
  end
end

Jekyll::Hooks.register :documents, :post_render do |doc|
  if Jekyll::CleansingRite.detects_voidspace?(doc)
    ritual = Jekyll::CleansingRite.invoke_document_ritual()
    ritual.perform(doc)
  end
end

