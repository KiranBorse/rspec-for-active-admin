require 'spec_helper'

describe "AdminPages" do
  describe "GET /admin_pages" do
    before do
      @user = FactoryGirl.create(:admin)
      sign_in @user
    end

    describe "check all pages:" do
      all_admin_pages = Dir['app/admin/*.rb'].map { |entry| entry[/[^\/]+\.rb/][0..-4] }
      if all_admin_pages.delete('dashboards')
        it 'dashboard' do
          get send("admin_dashboard_path")
          response.status.should be(200)
        end
      end

      all_admin_pages.each do |path|
        it path do
          get send("admin_#{path}_path")
          response.status.should be(200)
        end
      end

      all_admin_pages.each do |path|
        path = path.singularize
        it "#{path} -> NEW" do
          get send("new_admin_#{path}_path")
          response.status.should be(200)
        end

        it "#{path} -> EDIT" do
          get send("edit_admin_#{path}_path", FactoryGirl.create(path))
          response.status.should be(200)
        end
      end
    end
  end
end
