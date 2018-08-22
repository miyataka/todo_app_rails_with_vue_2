json.set! :tasks do
    json.array! @tasks |task| do
        json.extract! task, :id, :name, :is_done, :due, :created_at, :updated_at
    end
end
