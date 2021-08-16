require 'rails_helper'

RSpec.describe 'Create Artist', type: :system do
  scenario 'valid name' do
    visit new_artist_path

    fill_in :Name,	with: 'Karma Band'
    click_button 'Create Artist'
    expect(page).to have_content 'Karma Band'
    expect(Artist.count).to eq(1)
  end

  scenario 'empty name' do
    visit new_artist_path
    click_button 'Create Artist'
    expect(page).to have_content 'Name can\'t be blank'
    expect(Artist.count).to eq(0)
  end
end
