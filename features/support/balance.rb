require 'page-object'
require 'rspec'
class BalancePage
  include 'page-object'
  text_field(:value1, :id => 'txt_val_1')
  text_field(:value2, :id => 'txt_val_2')
  text_field(:value4, :id => 'txt_val_4')
  text_field(:value5, :id => 'txt_val_5')
  text_field(:value6, :id => 'txt_val_6')
  text_field(:total, :id => 'txt_ttl_val')

  #validates elements existence and visibility
  def validate_fields
    expect(@browser.textfield(:id => 'lbl_val_1').present?).to eq(true)
    expect(@browser.textfield(:id => 'lbl_val_2').present?).to eq(true)
    expect(@browser.textfield(:id => 'lbl_val_3').present?).to eq(true)
    expect(@browser.textfield(:id => 'lbl_val_4').present?).to eq(true)
    expect(@browser.textfield(:id => 'lbl_val_5').present?).to eq(true)
    expect(@browser.textfield(:id => 'lbl_ttl_val').present?).to eq(true)
    expect(@browser.textfield(:id => 'txt_val_1').present?).to eq(true)
    expect(@browser.textfield(:id => 'txt_val_2').present?).to eq(true)
    expect(@browser.textfield(:id => 'txt_val_4').present?).to eq(true)
    expect(@browser.textfield(:id => 'txt_val_5').present?).to eq(true)
    expect(@browser.textfield(:id => 'txt_val_6').present?).to eq(true)
    expect(@browser.textfield(:id => 'txt_ttl_val').present?).to eq(true)
  end

  #validates formatting of fields
  # def validate_field_values
  #   expect(self.value1).start_with?"$".to eq(true)
  #   expect(self.value2).start_with?"$".to eq(true)
  #   expect(self.value4).start_with?"$".to eq(true)
  #   expect(self.value5).start_with?"$".to eq(true)
  #   expect(self.value6).start_with?"$".to eq(true)
  #   expect(self.total).start_with?"$".to eq(true)
  # end

  # validates the sum ofindividual values equals to the total balance
  # def validate_total
  #   val1 = ((self.value1).gsub(/\D/,"").to_f)/100
  #   val2 = ((self.value2).gsub(/\D/,"").to_f)/100
  #   val4 = ((self.value4).gsub(/\D/,"").to_f)/100
  #   val5 = ((self.value5).gsub(/\D/,"").to_f)/100
  #   val6 = ((self.value6).gsub(/\D/,"").to_f)/100
  #   tot_bal = ((self.total).gsub(/\D/,"").to_f)/100
  #   if val1+val2+val4+val5+val6 == tot_bal
  #     puts "Sum of #{val1}, #{val2}, #{val4}, #{val5}, #{val6} is equal to #{tot_bal}"
  #   else
  #     puts "sum of values does not equal the total balance"
  #   end
  # end
end