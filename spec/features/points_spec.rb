require 'rails_helper'
require 'database_cleaner'

 RSpec.feature 'Managing points' do
  scenario 'List all points' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    @task = Task.create!(name: 'athing', due_by: 'atime', est_time: 'anhour')
    Point.create!(statpoint: 1)
    Point.create!(statpoint: 2)

    visit "/tasks/#{@task.id}/points/"

    expect(page).to have_content "status"
    Warden.test_reset!
  end

  scenario 'Show a point' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    @task = Task.create!(name: 'athing', due_by: 'atime', est_time: 'anhour')
    @point = Point.create!(statpoint: 1)

    visit "/tasks/#{@task.id}/points/#{@point.id}"

    expect(page).to have_content "0%"

    Warden.test_reset!
  end
end
