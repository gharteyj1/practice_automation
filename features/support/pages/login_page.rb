class LoginPage
  include PageObject

  page_url('http://puppies.herokuapp.com')
  text_field(:username, :id => 'user_id')
  text_field(:password, :id => 'user_password')
  button(:login, :value => 'Login')

  def login_with(username, password)
    self.username = username
    self.password = password
    login
  end

end


# def username?
#   @browser.text_field(:id => 'user_id').exists?
# end
#
# def username
#   @browser.text_field(:id => 'user_id').value
# end
#
# def username=(username)
#   @browser.text_field(:id => "user_id").set(username)
# end
#
# def username_element
#   @browser.text_field(:id => "user_id")
# end

