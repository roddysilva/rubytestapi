class UsersModel
    attr_accessor :id, :user_name, :password

    def user_hash
        {
            ID: @id,
            UserName: @user_name,
            Password: @password
        }
    end
end

# class OrderModel
#     attr_accessor :item_name 

#     def order_hash
#         {
#          sale: 
#          {
#             saleOrder: 
#             {
#                 item: 
#                 {
#                     itemName: @item_name,
#                     itemCategory: @item_category,
#                 },
#                 quantity: @quantity,
#                 unitPrice: @unit_price,
#                 totalPrice: @total_price,
#                 itemDiscount: @item_discount,
#                 available: @available,
#             },
#             wholeSalePrice: @whole_price,
#             wholeSaleDiscount: @whole_discount,
#             wholeSaleDiscountPercentage: @whole_discount_percentage,
#             orderDate: @order_date,
#             dueOrderDate: @due_order_date,
#          },
#          saleDate: @sale_date,
#          dueSaleDate: @due_date
#         }
# end

