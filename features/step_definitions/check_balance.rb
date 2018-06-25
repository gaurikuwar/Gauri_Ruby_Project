Given(/^the user is on total balance page$/) do
  #@browser.goto("http://www.google.com")
  @browser.goto("https://www.exercise1.com/values")
end

Then(/^the user should be able to see the required fields on the page$/) do
  bp = BalancePage.new
  bp.validate_fields
end

And(/^the fields should be in the correct format$/) do
  expect(on(BalancePage).value1).to match  (/^\$(([1-9]\d{0,2}(,\d{3})*)|0)?\.\d{1,2}$/i).to eq(true)
  expect(on(BalancePage).value2).to match  (/^\$(([1-9]\d{0,2}(,\d{3})*)|0)?\.\d{1,2}$/i).to eq(true)
  expect(on(BalancePage).value4).to match  (/^\$(([1-9]\d{0,2}(,\d{3})*)|0)?\.\d{1,2}$/i).to eq(true)
  expect(on(BalancePage).value5).to match  (/^\$(([1-9]\d{0,2}(,\d{3})*)|0)?\.\d{1,2}$/i).to eq(true)
  expect(on(BalancePage).value6).to match  (/^\$(([1-9]\d{0,2}(,\d{3})*)|0)?\.\d{1,2}$/i).to eq(true)
  expect(on(BalancePage).total).to match  (/^\$(([1-9]\d{0,2}(,\d{3})*)|0)?\.\d{1,2}$/i).to eq(true)
end

Then(/^the total of the values should match the value in the total balance field$/) do
  val1 = ((on(BalancePage).value1).gsub(/\D/,"").to_f)/100
  val2 = ((on(BalancePage).value2).gsub(/\D/,"").to_f)/100
  val4 = ((on(BalancePage).value4).gsub(/\D/,"").to_f)/100
  val5 = ((on(BalancePage).value5).gsub(/\D/,"").to_f)/100
  val6 = ((on(BalancePage).value6).gsub(/\D/,"").to_f)/100
  tot_bal = ((on(BalancePage).total).gsub(/\D/,"").to_f)/100
  if val1+val2+val4+val5+val6 == tot_bal
    puts "Sum of #{val1}, #{val2}, #{val4}, #{val5}, #{val6} is equal to #{tot_bal}"
  else
    puts "sum of values does not equal the total balance"
    end
end
