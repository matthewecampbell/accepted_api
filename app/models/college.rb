class College < ApplicationRecord

  def self.recommended_colleges(act, in_state, out_of_state, affiliation, grad_rate, enrollment)
    where(act_high: (act-3)..(act+3))
    .where("total_price_in_state < ?", in_state)
    .where(affiliation: affiliation)
    .where("total_price_out_of_state < ?", out_of_state)
    .where("six_year_grad_rate > ?", grad_rate)
    .where("total_enrollment > ?", enrollment)
  end
end
