class MainPage
  include PageObject

  page_url "https://mvsearch.humanity.com/app/schedule/employee/week/overview/overview/23%2c1%2c2019/"

  div(:mail_div, :class => 'no-data-wall')

  def get_mail_div_element
    wait_until(
        20,
        "Unable to locate mail_div_element!") do
      self.mail_div_element.exists? && self.mail_div_element.visible?
    end

    self.mail_div_element
  end

end
