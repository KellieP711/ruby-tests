Getting Started
---------------

This repo contains an example of using Ruby rspec and httparty for testing an endpoint.
These tests are located in the /spec/users_spec.rb file.

It also contains a small example of a UI script that selects a radio button, a dropdown item, and iterates over the rows in a table printing the values to the screen.  This file is located here: /pages/html_elements_page.rb.

Installation
------------

Clone the repository:

`$ git clone https://github.com/KellieP711/ruby-tests.git`

`$ bundle install`

Run UI Tests

`$ make run-ui-tests`

Run API Tests

`$ make run-api-tests`

Run all UI and API Tests

`$ make run-tests`

To Do
* add some error handling for when an object is not found, close the browser
* add the watir-rspec and change the ui script to 3 separate tests.
* build some common functions for things like: explicit waits if needed, checking for the existince of elements, checking for text, etc...
* for the UI tests that get created, separate the page info like the elements definitions, and specific page functionality from the tests themselves. 
