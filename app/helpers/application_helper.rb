module ApplicationHelper

  def price_in_euro(price)
    "€ #{price / 100.0}"
  end
end
