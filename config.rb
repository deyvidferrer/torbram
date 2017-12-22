activate :aria_current
activate :autoprefixer
activate :sprockets

set :css_dir, "assets/stylesheets"
set :fonts_dir, "assets/fonts"
set :images_dir, "assets/images"
set :js_dir, "assets/javascripts"

# Global site settings (not shown here)
 set :site_url, ""

set :markdown,
  autolink: true,
  fenced_code_blocks: true,
  footnotes: true,
  highlight: true,
  smartypants: true,
  strikethrough: true,
  tables: true,
  with_toc_data: true
set :markdown_engine, :redcarpet

page "/*.json", layout: false
page "/*.txt", layout: false
page "/*.xml", layout: false

page "/services/*", :layout => :service_layout

# Server Environment
configure :server do

  # Debug assets
  set :debug_assets, true

end

configure :development do
  activate :livereload do |reload|
    reload.no_swf = true
  end
end

configure :production do
  activate :gzip
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
end

configure :build do
  set :site_url, "/torbram/build/"
  #set :http_prefix, '/torbram/build/'
  set :base_url, "/torbram/build/"
  activate :relative_assets
  set :relative_links, true
  #activate :minify_css
  #activate :minify_javascript
end
