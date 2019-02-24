class ShiftPlanningPage
  include PageObject

  page_url "https://mvsearch.humanity.com/app/schedule/employee/week/overview/overview/23%2c1%2c2019/"

  div(:default_emplo, :id => 'tlv_employee')
  button(:add_emp, :class => 'add-employee-btn')
  div(:con_butt, :class => 'hum_os_save')
  text_field(:input_first_name, :id => 'fname_1')
  text_field(:input_last_name, :id => 'lname_1')
  text_field(:input_position, :id =>  'positions_1-selectized')

  def get_default_emplo_element
    wait_until(
        20,
        "Unable to locate default_emplo_element!") do
      self.default_emplo_element.exists? && self.default_emplo_element.visible?
    end

    self.default_emplo_element
  end

  def get_con_butt_element
    wait_until(
        20,
        "Unable to locate con_butt_element!") do
      self.con_butt_element.exists? && self.con_butt_element.visible?
    end

    self.con_butt_element
  end

  def get_input_position_element
    wait_until(
        20,
        "Unable to locate default_emplo_element!") do
      self.input_position_element.exists? && self.input_position_element.visible?
    end

    self.input_position_element
  end

end
