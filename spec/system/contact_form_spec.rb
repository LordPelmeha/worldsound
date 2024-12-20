RSpec.describe "Contact form", type: :system do
  it "allows a user to submit a message" do
    visit contact_path
    fill_in 'Имя:', with: 'John Doe'
    fill_in 'Почта:', with: 'john@example.com'
    fill_in 'Тема:', with: 'Test Subject'
    fill_in 'Сообщение:', with: 'This is a test message.'

    click_button 'Отправить сообщение'
    expect(page).to have_content('Ваше обращение успешно отправлено!')
  end
end
