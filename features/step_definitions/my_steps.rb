
When("inicio la aplicacion") do
    visit '/'
end

Then("el titulo es {string}") do |titulo|
    expect(page).to have_css "h1", text: titulo
end

When("inicio del juego") do
    click_button "Iniciar"
end
  
Then("se muestra {string}") do |string|
    expect(page).to have_css "h2", text: string
end

Then("se muestra el boton {string}") do |valor|
    #expect(page).to have_css "input#botonAdivinar", text: valor
    #expect(page).to have_xpath("//input[@id=\"botonAdivinar\" @value=\"#{valor}\"]")
    expect(find("input#botonAdivinar").value).to match /#{valor}/m
end
  
Then("se permite ingreso de letra") do
    expect(page).to have_xpath("//input[@id=\"letra\"]")
end

Given("por adivinar {string}") do |string|
    
  end
  
When("ingreso la letra {string}") do |valor|
    fill_in("letra", with: valor)
    #expect(find("input#letra").value).to match /#{valor}/m
end

When("le doy clic en {string}") do |string|
    click_button(string)
  end

Then("me muestra {string}") do |valor|
    expect(page).to have_css "h2#mensaje", text: valor
end