class ShoppingCartPagex

  NAME_COLUMN = 1
  SUBTOTAL_COLUMN = 3
  LINES_PER_PUPPY = 6

  def initialize(browser)
    @browser = browser
  end

  def name_for_line_item(line_item)
    cart_line_item(line_item)[NAME_COLUMN].text
  end

  def subtotal_for_line_item(line_item)
    cart_line_item(line_item)[SUBTOTAL_COLUMN].text
  end

  def cart_total
    @browser.td(:class => 'total_cell').text
  end

  def proceed_to_checkout
    @browser.button(:value => 'Complete the Adoption').click
  end

  def continue_shopping
    @browser.button(:value => 'Adopt Another Puppy').click
  end

  private

  def row_for(line_item)
    (line_item - 1) * LINES_PER_PUPPY
  end

  def cart_line_item(line_item)
    @browser.table(:index => 0)[row_for(line_item)]
  end


end