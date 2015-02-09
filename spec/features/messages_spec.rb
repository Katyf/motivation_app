require 'rails_helper'
require 'database_cleaner'

RSpec.feature 'Managing messages' do
  scenario 'List all messages' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    Message.create!(body: 'Get your shit together, Carol')
    Message.create!(body: 'Get your shit together, Carol')
    Message.create!(body: 'Get your shit together, Carol')

    visit '/messages'

    expect(page).to have_content 'Messages'
    Warden.test_reset!
  end

  scenario 'Create an message' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    visit '/messages/new'

    fill_in 'Body', with: 'Get your shit together, Carol'

    click_on 'Create Message'

    expect(page).to have_content(/success/i)

    Warden.test_reset!
  end

  scenario 'Show a message' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    @message = Message.create!(body: 'Get your shit together, Carol')

    visit "/messages/#{@message.id}"

    expect(page.find('h1')).to have_content 'Get your shit together, Carol'

    Warden.test_reset!
  end
end


