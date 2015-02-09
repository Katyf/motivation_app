require 'rails_helper'
require 'database_cleaner'

 RSpec.feature 'Managing Messages' do
  scenario 'List all messages' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    @task = Task.create!(name: 'athing', due_by: 'atime', est_time: 'anhour', status: 1)
    Message.create!(body_text: 'Get your shit together, Carol')
    Message.create!(body_text: 'Get your shit together, Carol')

    visit "/tasks/#{@task.id}/messages/"

    expect(page).to have_content "Messages"
    Warden.test_reset!
  end

  scenario 'Show a message' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    @task = Task.create!(name: 'athing', due_by: 'atime', est_time: 'anhour', status: 1)
    @message = Message.create!(body_text: 'Get your shit together, Carol')

    visit "/tasks/#{@task.id}/messages/#{@message.id}"

    expect(page).to have_content "Get your shit together, Carol"

    Warden.test_reset!
  end
end
