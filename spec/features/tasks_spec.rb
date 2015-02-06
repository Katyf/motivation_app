require 'rails_helper'
require 'database_cleaner'

RSpec.feature 'Managing tasks' do
  scenario 'List all tasks' do
    user = FactoryGirl.create(:user)
    user.confirmed_at = Time.now
    user.save

    task.create!(name: 'athing', due_by: "atime", est_time: 'anhour', status: 1)
    task.create!(name: 'athing', due_by: "atime", est_time: 'anhour', status: 1)
    task.create!(name: 'athing', due_by: "atime", est_time: 'anhour', status: 1)

    visit '/tasks'

    expect(page).to have_content 'tasks'
    # expect(page).to have_selector 'p', count: 3
    Warden.test_reset!
  end

  scenario 'Create an task' do
    user = FactoryGirl.create(:user)
    user.confirmed_at = Time.now
    user.save

    visit '/tasks/new'

    fill_in 'name', with: 'athing'
    fill_in 'due_by', with: "atime."
    click_on 'Create task'

    expect(page).to have_content(/success/i)

    Warden.test_reset!
  end

  # scenario 'Read an task' do


  #   task = task.create!(name: 'athing', due_by: "atime", est_time: 'anhour', status: 1)

  #   visit "/tasks/#{task.id}"

  #   expect(page.find('h1')).to have_content 'athing'
  #   expect(page).to have_content "atime."
  # end

  # scenario 'Update an task' do
  #   task = task.create!(name: 'One Stupid Trick', due_by: "atime.")

  #   visit "tasks/#{task.id}/edit"

  #   fill_in 'name', with: 'notherthing'
  #   fill_in 'due_by', with: 'nothertime'
  #   click_on 'Update task'

  #   expect(page).to have_content(/success/i)
  #   expect(page.find('h1')).to have_content 'notherthing'
  #   expect(page).to have_content 'nothertime'
  # end

  # scenario 'Delete an task' do
  #   task = task.create!(name: 'athing', due_by: "atime", est_time: 'anhour', status: 1)

  #   visit "tasks/#{task.id}/edit"

  #   click_on 'Delete task'

  #   expect(page).to have_content(/success/i)
  # end
end
