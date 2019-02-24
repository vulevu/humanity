class TimeClockPage
  include PageObject

  page_url "https://mvsearch.humanity.com/app/timeclock/"

  div(:default_date, :class => 'tlDate')
  span(:clockOut, :class => 'clockOut_help_tag')
  link(:clockIn, :id => 'tc_tl_ci')

  def get_default_date_element
    wait_until(
        20,
        "Unable to locate default_emplo_element!") do
      self.default_date_element.exists? && self.default_date_element.visible?
    end

    self.default_date_element
  end

  def get_clockIn_element
    wait_until(
        20,
        "Unable to locate default_emplo_element!") do
      self.clockIn_element.exists? && self.clockIn_element.visible?
    end

    self.clockIn_element
  end

  def get_clockOut_element
    wait_until(
        20,
        "Unable to locate default_emplo_element!") do
      self.clockOut_element.exists? && self.clockOut_element.visible?
    end

    self.clockOut_element
  end

end
