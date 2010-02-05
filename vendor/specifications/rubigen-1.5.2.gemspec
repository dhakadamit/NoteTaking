# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rubigen}
  s.version = "1.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dr Nic Williams", "Jeremy Kemper"]
  s.date = %q{2009-01-11}
  s.description = %q{A framework to allow Ruby applications to generate file/folder stubs  (like the `rails` command does for Ruby on Rails, and the 'script/generate' command within a Rails application during development).}
  s.email = ["drnicwilliams@gmail.com", "jeremy@bitsweat.net"]
  s.executables = ["install_rubigen_scripts", "rubigen", "ruby_app"]
  s.extra_rdoc_files = ["History.txt", "License.txt", "Manifest.txt", "README.rdoc", "Todo.txt", "app_generators/ruby_app/templates/README.txt", "website/index.txt", "website/version-raw.txt", "website/version.txt"]
  s.files = [".autotest", "History.txt", "License.txt", "Manifest.txt", "README.rdoc", "Rakefile", "Todo.txt", "app_generators/ruby_app/USAGE", "app_generators/ruby_app/ruby_app_generator.rb", "app_generators/ruby_app/templates/README.txt", "app_generators/ruby_app/templates/Rakefile", "app_generators/ruby_app/templates/lib/module.rb", "app_generators/ruby_app/templates/test/test_helper.rb.erb", "bin/install_rubigen_scripts", "bin/rubigen", "bin/ruby_app", "features/development.feature", "features/help.feature", "features/rubigen_cli.feature", "features/steps/common.rb", "features/steps/env.rb", "generators/install_rubigen_scripts/install_rubigen_scripts_generator.rb", "generators/install_rubigen_scripts/templates/script/destroy", "generators/install_rubigen_scripts/templates/script/generate", "generators/install_rubigen_scripts/templates/script/win_script.cmd", "lib/rubigen.rb", "lib/rubigen/base.rb", "lib/rubigen/cli.rb", "lib/rubigen/commands.rb", "lib/rubigen/generated_attribute.rb", "lib/rubigen/helpers/generator_test_helper.rb", "lib/rubigen/lookup.rb", "lib/rubigen/manifest.rb", "lib/rubigen/options.rb", "lib/rubigen/scripts.rb", "lib/rubigen/scripts/destroy.rb", "lib/rubigen/scripts/generate.rb", "lib/rubigen/scripts/update.rb", "lib/rubigen/simple_logger.rb", "lib/rubigen/spec.rb", "rubygems_generators/application_generator/USAGE", "rubygems_generators/application_generator/application_generator_generator.rb", "rubygems_generators/application_generator/templates/bin", "rubygems_generators/application_generator/templates/generator.rb", "rubygems_generators/application_generator/templates/readme", "rubygems_generators/application_generator/templates/test.rb", "rubygems_generators/application_generator/templates/test_generator_helper.rb", "rubygems_generators/application_generator/templates/usage", "rubygems_generators/component_generator/USAGE", "rubygems_generators/component_generator/component_generator_generator.rb", "rubygems_generators/component_generator/templates/generator.rb", "rubygems_generators/component_generator/templates/rails_generator.rb", "rubygems_generators/component_generator/templates/readme", "rubygems_generators/component_generator/templates/test.rb", "rubygems_generators/component_generator/templates/test_generator_helper.rb", "rubygems_generators/component_generator/templates/usage", "script/console", "script/destroy", "script/generate", "script/txt2html", "test/test_application_generator_generator.rb", "test/test_component_generator_generator.rb", "test/test_generate_builtin_application.rb", "test/test_generate_builtin_test_unit.rb", "test/test_generator_helper.rb", "test/test_helper.rb", "test/test_install_rubigen_scripts_generator.rb", "test/test_lookup.rb", "test/test_rubigen_cli.rb", "test_unit_generators/test_unit/USAGE", "test_unit_generators/test_unit/templates/test.rb", "test_unit_generators/test_unit/test_unit_generator.rb", "website/index.html", "website/index.txt", "website/javascripts/rounded_corners_lite.inc.js", "website/stylesheets/screen.css", "website/template.js", "website/template.rhtml", "website/version-raw.js", "website/version-raw.txt", "website/version.js", "website/version.txt"]
  s.homepage = %q{http://drnic.github.com/rubigen}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rubigen}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A framework to allow Ruby applications to generate file/folder stubs  (like the `rails` command does for Ruby on Rails, and the 'script/generate' command within a Rails application during development).}
  s.test_files = ["test/test_application_generator_generator.rb", "test/test_component_generator_generator.rb", "test/test_generate_builtin_application.rb", "test/test_generate_builtin_test_unit.rb", "test/test_generator_helper.rb", "test/test_helper.rb", "test/test_install_rubigen_scripts_generator.rb", "test/test_lookup.rb", "test/test_rubigen_cli.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.2.2"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.2.2"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
