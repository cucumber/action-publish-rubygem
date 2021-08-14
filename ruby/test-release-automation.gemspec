Gem::Specification.new do |s|
	s.name        = 'cucumber-test-release-automation'
	s.version     = "0.0.#{`git rev-parse HEAD`}"
	s.summary     = "A dummy gem to test Cucumber's automated release pipeline"
	s.description = "Doesn't do anything. Used to test https://github.com/cucumber-actions/publish-rubygem/"
	s.authors     = ["Matt Wynne"]
	s.email       = 'matt@cucumber.io'
	s.files       = []
	s.homepage    =
		'https://github.com/cucumber-actions/publish-rubygem'
	s.license       = 'MIT'
end