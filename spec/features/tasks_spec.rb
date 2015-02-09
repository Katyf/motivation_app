require 'rails_helper'
require 'database_cleaner'

RSpec.feature 'Managing tasks' do
  scenario 'List all tasks' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    Task.create!(name: 'athing', due_by: 'atime', est_time: 'anhour')
    Task.create!(name: 'athing', due_by: 'atime', est_time: 'anhour')
    Task.create!(name: 'athing', due_by: 'atime', est_time: 'anhour')

    visit '/tasks'

    expect(page).to have_content 'Tasks'
    # expect(page).to have_selector 'p', count: 3
    Warden.test_reset!
  end

  scenario 'Create an task' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    visit '/tasks/new'

    fill_in 'Name', with: 'athing'
    fill_in 'Due by', with: 'atime'
    fill_in 'Est time', with: 'anhour'

    click_on 'Create Task'

    expect(page).to have_content(/success/i)

    Warden.test_reset!
  end

  scenario 'Read an task' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    task = Task.create!(name: 'athing', due_by: "atime", est_time: 'anhour')

    visit "/tasks/#{task.id}"

    expect(page.find('h1')).to have_content 'athing'
    expect(page).to have_content "atime"

    Warden.test_reset!
  end

  scenario 'Update an task' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    task = Task.create!(name: 'notherthing', due_by: 'nothertime', est_time: 'anhour')

    visit "tasks/#{task.id}/edit"

    fill_in 'Name', with: 'notherthing'
    fill_in 'Due by', with: 'nothertime'
    fill_in 'Est time', with: 'anhour'

    click_on 'Update Task'

    expect(page).to have_content(/success/i)
    expect(page).to have_content 'notherthing'
    expect(page).to have_content 'nothertime'

    Warden.test_reset!
  end

  scenario 'Delete an task' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    task = Task.create!(name: 'athing', due_by: "atime", est_time: 'anhour')

    visit "/tasks/#{task.id}/edit"

    click_on 'Delete'

    expect(page).to have_content(/success/i)

    Warden.test_reset!
  end
end
