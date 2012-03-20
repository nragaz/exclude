Gem::Specification.new do |s|
  s.name = "exclude"
  s.summary = "The inverse of `select` on an ActiveRecord::Relation."
  s.description = "The inverse of `select` on an ActiveRecord::Relation. Use to avoid loading large columns (e.g. texts or blobs)."
  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.version = "0.0.3"
  s.authors = ["Nick Ragaz"]
  s.email = "nick.ragaz@gmail.com"
  s.homepage = "http://github.com/nragaz/exclude"

  s.add_dependency 'rails', '~> 3'
  s.add_development_dependency 'sqlite3'
end
