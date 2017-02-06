class Signup
  include ActiveModel::Model

  attr_accessor :user_first_name, :company_name, :user

  validates :user_first_name, :company_name, presence: true

  def save
    if valid?
      company = Company.create(name: company_name)
      @user = User.create(first_name: user_first_name, company: company)
    end
  end
end
