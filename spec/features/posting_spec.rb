require "rails_helper"

 describe "the signin process" do
  before :each do
    @user = create(:user, password: 'rickandmorty')
  end
   it "sposting something" do

    visit '/users/sign_in'
    within("#new_user") do
      fill_in 'Email', with: @user.email
      fill_in 'Password', with: 'rickandmorty'
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'

    visit '/posts/new'
    within("#new_post") do
      attach_file('post_photo', "#{Rails.root}/spec/factories/cat.jpeg")
      fill_in 'Description', with: 'holi'
    end
    click_button 'Submit'
    expect(page).to have_content 'It was sucessfull'
    @var= Post.first.description
    expect(var).to eq('holi')
 
  end
end


