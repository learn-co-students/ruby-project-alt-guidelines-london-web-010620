require_relative "../config/environment"
system "clear"
quit = false

cli = CommandLineInterface.new
brand = Brand.new
shoe = Shoe.new
seller = Seller.new
while quit == false
  cli.greet
  function = cli.select_function

  if function == "1"
    system "clear"
    brand.brand_search
  elsif function == "2"
    system "clear"
    shoe.price_range
  elsif function == "3"
    system "clear"
    seller.create_account
  elsif function == "4"
    seller.login
  elsif function == "5"
    quit = true
    system "clear"
    cli.goodbye
    sleep(3)
    system "clear"
  else
    puts "Invalid input, please try again."
  end
end
