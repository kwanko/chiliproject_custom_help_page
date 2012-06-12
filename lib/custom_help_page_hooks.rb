# Custom help page plugin for Chiliproject
# Copyright (C) 2012  Arnauld NYAKU

class CustomHelpPageHooks < Redmine::Hook::ViewListener
   
    def view_layouts_base_html_head(context = {})
        js = javascript_include_tag 'custom_help_page.js', :plugin => 'chiliproject_custom_help_page'
        js
    end

    render_on :view_layouts_base_help_menu, :partial => 'custom_help_page/add_custom_help_page'
end
