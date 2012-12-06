class ChangeFindersToObservers < ActiveRecord::Migration

    def change
      rename_column :records, :finders, :observers
    end
end
