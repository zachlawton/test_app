require "rails_helper"

RSpec.describe BookUsersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/book_users").to route_to("book_users#index")
    end

    it "routes to #new" do
      expect(get: "/book_users/new").to route_to("book_users#new")
    end

    it "routes to #show" do
      expect(get: "/book_users/1").to route_to("book_users#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/book_users/1/edit").to route_to("book_users#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/book_users").to route_to("book_users#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/book_users/1").to route_to("book_users#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/book_users/1").to route_to("book_users#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/book_users/1").to route_to("book_users#destroy", id: "1")
    end
  end
end
