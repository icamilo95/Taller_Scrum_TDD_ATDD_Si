Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |mensaje|
  last_response.body.should =~ /#{mensaje}/m
end


When(/^indico que el "(.*?)" es "(.*?)"$/) do |jugador, nombre|
  fill_in(jugador, :with => nombre)
end

When(/^inicio un juego$/) do
  click_button("iniciar")

end

Given(/^que inicie una partida$/) do
visit '/'
fill_in("jugador1", :with => "Ali cathe")
fill_in("jugador2", :with => "Alan Brito")
click_button("iniciar")
end


When(/^el "(.*?)" marca punto$/) do |jugador|
  click_button(jugador)
end
