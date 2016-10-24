class CreateLoansubmissions < ActiveRecord::Migration
  def change
    create_table :loansubmissions do |t|
      t.integer :loanamount
      t.integer :propertyvalue
      t.string :ssn
      t.string :loanstatus

      t.timestamps null: false
    end
  end
end
