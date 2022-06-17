class StaticPagesController < ApplicationController

    def pricing
        @pricing = Stripe::Price.list(lookup_keys: ["yearly_plan", "monthly_plan"], expand: ["data.product"]).data.sort_by {|p| p.unit_amount}
    end
end