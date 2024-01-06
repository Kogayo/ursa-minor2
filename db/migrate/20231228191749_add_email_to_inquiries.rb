class AddEmailToInquiries < ActiveRecord::Migration[7.0]
  def change
    add_column :inquiries, :email, :string
  end
end
