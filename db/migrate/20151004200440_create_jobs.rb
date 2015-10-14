class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_originaddress
      t.string :job_destinationaddress
      t.string :job_servicelevel
      t.string :job_orderplacer
      t.string :job_orderphone
      t.string :job_orderemail
      t.string :job_billingreference
      t.string :job_paymenttype
      t.datetime :job_datetime
      t.string :job_price

      t.timestamps null: false
    end
  end
end
