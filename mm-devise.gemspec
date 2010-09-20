# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mm-devise}
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kristian Mandrup"]
  s.date = %q{2010-09-20}
  s.description = %q{dm-devise adds MongoMapper support to devise (http://github.com/plataformatec/devise) for authentication support for Rails}
  s.email = %q{jmorgan@morgancreative.net}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "Gemfile",
     "Gemfile.lock",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "lib/devise/orm/mongo_mapper.rb",
     "lib/devise/orm/mongo_mapper/compatibility.rb",
     "lib/devise/orm/mongo_mapper/date_time.rb",
     "lib/devise/orm/mongo_mapper/mm-validations.rb",
     "lib/devise/orm/mongo_mapper/schema.rb",
     "lib/devise/orm/mongo_mapper_active_model.rb",
     "lib/generators/mongo_mapper/devise_generator.rb",
     "lib/mm-devise/version.rb",
     "mm-devise.gemspec",
     "test/mongo_mapper/compatibility_test.rb",
     "test/orm/mongo_mapper.rb",
     "test/orm/mongo_mapper_active_model.rb",
     "test/overrides/mm_validations_test.rb",
     "test/overrides/mongo_mapper_test.rb",
     "test/rails_app/app/mongo_mapper/admin.rb",
     "test/rails_app/app/mongo_mapper/shim.rb",
     "test/rails_app/app/mongo_mapper/user.rb",
     "test/rails_app/app/mongo_mapper_active_model/admin.rb",
     "test/rails_app/app/mongo_mapper_active_model/user.rb",
     "test/rails_app/config/application.rb",
     "test/rails_app/config/environment.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/kristianmandrup/mm-devise}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Support for using MongoMapper ORM with devise}
  s.test_files = [
    "test/mongo_mapper/compatibility_test.rb",
     "test/orm/mongo_mapper.rb",
     "test/orm/mongo_mapper_active_model.rb",
     "test/overrides/mm_validations_test.rb",
     "test/overrides/mongo_mapper_test.rb",
     "test/rails_app/app/mongo_mapper/admin.rb",
     "test/rails_app/app/mongo_mapper/shim.rb",
     "test/rails_app/app/mongo_mapper/user.rb",
     "test/rails_app/app/mongo_mapper_active_model/admin.rb",
     "test/rails_app/app/mongo_mapper_active_model/user.rb",
     "test/rails_app/config/application.rb",
     "test/rails_app/config/environment.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongo_mapper>, ["~> 0.8.4"])
      s.add_runtime_dependency(%q<bson_ext>, ["~> 1.0.7"])
      s.add_runtime_dependency(%q<rails3-generators>, ["~> 0.13.0"])
      s.add_runtime_dependency(%q<jnunemaker-validatable>, ["~> 1.8.1"])
      s.add_runtime_dependency(%q<devise>, ["~> 1.1.1"])
      s.add_runtime_dependency(%q<sugar-high>, ["~> 0.2.10"])
      s.add_runtime_dependency(%q<warden>, ["~> 0.10.7"])
      s.add_runtime_dependency(%q<bcrypt-ruby>, ["~> 2.1.2"])
    else
      s.add_dependency(%q<mongo_mapper>, ["~> 0.8.4"])
      s.add_dependency(%q<bson_ext>, ["~> 1.0.7"])
      s.add_dependency(%q<rails3-generators>, ["~> 0.13.0"])
      s.add_dependency(%q<jnunemaker-validatable>, ["~> 1.8.1"])
      s.add_dependency(%q<devise>, ["~> 1.1.1"])
      s.add_dependency(%q<sugar-high>, ["~> 0.2.10"])
      s.add_dependency(%q<warden>, ["~> 0.10.7"])
      s.add_dependency(%q<bcrypt-ruby>, ["~> 2.1.2"])
    end
  else
    s.add_dependency(%q<mongo_mapper>, ["~> 0.8.4"])
    s.add_dependency(%q<bson_ext>, ["~> 1.0.7"])
    s.add_dependency(%q<rails3-generators>, ["~> 0.13.0"])
    s.add_dependency(%q<jnunemaker-validatable>, ["~> 1.8.1"])
    s.add_dependency(%q<devise>, ["~> 1.1.1"])
    s.add_dependency(%q<sugar-high>, ["~> 0.2.10"])
    s.add_dependency(%q<warden>, ["~> 0.10.7"])
    s.add_dependency(%q<bcrypt-ruby>, ["~> 2.1.2"])
  end
end

