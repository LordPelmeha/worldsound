RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = User.new(email: "test@example.com", password: "password", password_confirmation: "password")
    expect(user).to be_valid
  end
end
