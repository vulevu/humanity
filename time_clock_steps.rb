# PRVO: Kako ja da nadjem element? (U vecini slucajeva se nalazi u Pages)
# DRUGO: Sta da radim?
#      a) U slucaju When iniciran neku akciju kao sto je npr. click, ubaciti neki tekst
#      b) U slucaju Then, u slucaju provere proveravam kao da je nest <>, postoji,...itd.


#U zagradi prvo pomocu klase lociras element a nakon toga uzimas tekst da li je tekst onaj tekst koji ocekujes
    # (poslat kao parametar)

    # Ocekujem da je to sto proveravam jednako elementu koji je poslat. Ukoliko nije, dolazi do prekida izvrsavanja
    # 1) nalazenje elementa
    # 2) daj mi text to elementa
    # 3) proveri da li je vrednost jednaka parametru koji je poslat tj. dat. Ukoliko nije, dolazi do prekida izvrsavanja.
    # expect(page.check_day_element.text).to eql day

    # if page.check_day_element.text != day
    #   puts "Problem"
    # end

When ("I click on TimeClock in main menu")  do
  visit(TimeClockPage)
end

Then("I should be on TimeClock page") do
  on(TimeClockPage) do |page|
    page.get_default_date_element
  end
end

When("I click on Clock Out link") do
  on(TimeClockPage) do |page|
    page.get_clockOut_element.click
  end
end

Then("I should see Clock In link") do
  on(TimeClockPage) do |page|
    page.get_clockIn_element
  end
end

When("I click on Clock In link") do
  on(TimeClockPage) do |page|
    page.get_clockIn_element.click
  end
end

Then("I should see Clock Out link") do
  on(TimeClockPage) do |page|
    page.get_clockOut_element
  end
end