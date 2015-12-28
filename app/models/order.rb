class Order < ActiveRecord::Base
	has_many :order_items, dependent: :destroy

	def total
		total_price = order_items.inject(0) { |sum, i| sum + i.subtotal }

	end
end
