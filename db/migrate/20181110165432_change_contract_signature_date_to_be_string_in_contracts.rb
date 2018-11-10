class ChangeContractSignatureDateToBeStringInContracts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :contracts, :contract_signature_date
  	add_column :contracts, :contract_signature_date, :integer
  end
end
