require 'rails_helper'

RSpec.describe ProjectsController do
  describe "make sure that project was created" do
    it "creates an instance of project" do
      old_count = Project.count
      post :create, :name => 'New Project', :description => 'Sample description',
      :github => 'www.github.com/cindyk09', :projecturl => 'www.newproject.com',
      :user_id => 1, :tags => 'rubyonrails', :software => 'rails'

      expect(Project.count).to eq(old_count + 1)
    end
  end
end
