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
end

