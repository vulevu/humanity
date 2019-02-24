class LoginPage
  include PageObject

  page_url "https://mvsearch.humanity.com/app/"

  text_field(:login_name, :id => 'email')
  text_field(:password, :id => 'password')
  button(:login,  :name => 'login')
end
