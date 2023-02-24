class ChangeFindersToObservers < ActiveRecord::Migration[4.2]

    def change
      rename_column :records, :finders, :observers
    end
end
