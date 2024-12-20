require 'rails_helper'

RSpec.describe "Navigation", type: :system do
  it 'redirects to the root path after successful user registration' do
    visit signup_path # Переход на страницу регистрации

    fill_in 'Email:', with: 'test@example.com' # Используем локализованный текст
    fill_in 'Пароль:', with: 'password' # Используем локализованный текст
    fill_in 'Подтвердите пароль:', with: 'password' # Используем локализованный текст
    click_button 'Зарегистрироваться'

    expect(current_path).to eq(root_path) # Ожидаемый редирект на главную страницу
    expect(page).to have_content('Регистрация успешна!') # Ожидаемое сообщение
  end

  it "navigates to the home page" do
    visit root_path
    expect(page).to have_content('Музыка мира')
  end

  it "navigates to the genres page" do
    visit root_path
    click_link 'Жанры'
    expect(current_path).to eq(genres_path)
  end

  it "navigates to the legends page" do
    visit root_path
    click_link 'Легенды'
    expect(current_path).to eq(legends_path)
  end

  it "navigates to the contact page" do
    visit root_path
    click_link 'Контакты'
    expect(current_path).to eq(contact_path)
  end
end

