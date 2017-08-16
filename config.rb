# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

activate :i18n, mount_at_root: :en, langs: [:fr, :en]

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch = 'gh-pages'
  deploy.build_before = true
end

configure :build do
  activate :directory_indexes
  set :relative_links, true
end
