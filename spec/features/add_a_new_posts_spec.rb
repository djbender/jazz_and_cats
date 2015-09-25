require 'rails_helper'

RSpec.feature "Add a new post", type: :feature do
  it 'can create a new post' do
    visit '/posts/new'
    fill_in 'title', with: 'Miles Davis'
    fill_in 'body', with: 'Miles Dewey Davis III (May 26, 1926 – September 28, 1991) was an American jazz musician, trumpeter, bandleader, and composer. Widely considered one of the most influential musicians of the 20th century,[1] Miles Davis was, together with his musical groups, at the forefront of several major developments in jazz music, including bebop, cool jazz, hard bop, modal jazz, and jazz fusion.'
    click_button 'Create Post'

    expect(page).to have_content 'Post was successfully created'
    expect(page).to have_content 'Miles Davis'
  end
end
