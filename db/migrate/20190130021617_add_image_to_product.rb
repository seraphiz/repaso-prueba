class AddImageToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :image, :string, default: 'http://www.demo.wdmtech.com/images/stories/virtuemart/product/product_lg_type.jpg'
  end
end
