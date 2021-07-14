run-ui-tests:
	ruby pages/html_elements_page.rb

run-api-tests:
	bin/rspec --format doc

run-tests: run-ui-tests run-api-tests
