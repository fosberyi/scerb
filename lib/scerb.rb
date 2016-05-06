require "action_view/template"
require "sass"

module Scerb
  def self.call(template)
    compiled_source = erb_handler.call(template)
    "Sass::Engine.new(begin;#{compiled_source};end, {syntax: :scss}).render"
  end

  def self.erb_handler
    @@erb_handler ||= ActionView::Template.registered_template_handler(:erb)
  end
end

ActionView::Template.register_template_handler :scerb, Scerb
