require 'HTTParty'
require 'json'

# for these tests I chose to put all the info in this file, given the small amount
# of tests.  If this were to grow, it would make sense to move things in to a class file
# and pass the class in here to the "RSpec.describe Class ...."
RSpec.describe "test the /users api" do
    # set the url here so I can use it in each test
    let(:url) { 'https://jsonplaceholder.typicode.com/users' }

    # verify a GET /users request returns a 200
    context "make GET /users request" do
        it "verify a 200 is returned" do
            response = HTTParty.get(url)
            puts "got response code: #{response.code}"
            expect(response.code).to eq 200
        end
    end

    # verify that all the users returned have an id 
    context "make GET /users request" do
        it "verify all the users returned, have an id" do
            response = HTTParty.get(url)
            users = JSON.parse(response.body)
            users.each do |user|
                # user["id"] is an integer
                expect((user["id"] == 0)).to eq false
                expect((user["id"].nil?)).to eq false
                puts "User name: #{user["name"]} has id: #{user["id"]}"               
            end
        end
    end

    # verify a DELETE on one of the main endpoints throws a 404
    # a negative test to verify error handling in the endpoint
    context "make a DELETE request to the /users endpoint" do
        it "should return a 404 error" do
            response = HTTParty.delete(url)
            puts "got response code: #{response.code}"
            expect(response.code).to eq 404
        end
    end
end

