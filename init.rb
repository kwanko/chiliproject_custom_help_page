# Custom help page plugin for Chiliproject
# Copyright (C) 2012  Arnauld NYAKU

require 'redmine'

# require all files in lib
Dir::foreach(File.join(File.dirname(__FILE__), 'lib')) do |file|
  next unless /\.rb$/ =~ file
  require file
end

Redmine::Plugin.register :chiliproject_custom_help_page do
  name 'Chiliproject Custom help page plugin'
  author 'Arnauld NYAKU'
  description 'This is a custom help page plugin for Chiliproject'
  version '0.0.1'
  url ''
  author_url 'mailto:arnauld.nyaku@c2bsa.com'

  settings :default => { 'custom_help_page' => ''}, :partial => 'settings/custom_help_page'

end

