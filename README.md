Getting Started
---------------

This repo contains an example of using Ruby rspec and httparty for testing an endpoint.
It also contains a small example of a UI script that selects a radio button, a dropdown item, and iterates over the rows in a table printing the values to the screen.

Installation
------------

Clone the repository:

`$ git clone https://github.com/KellieP711/ruby-tests.git`

`$ bundle install`

Run UI Tests

`$ make run-ui-tests`

Run API Tests

`$ make run-api-tests`

Run all Tests

`$ make run-tests`

To Do
* add the watir-rspec and change the ui script to 3 separate tests.
* build some common functions for things like: explicit waits if needed, checking for the existince of elements, checking for text, etc...
* for the UI tests that get created, separate the page info like the elements definitions, and specific page functionality from the tests themselves. 
