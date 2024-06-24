json.extract! table, :id, :table_number, :tournament_id, :round_id, :created_at, :updated_at
json.url table_url(table, format: :json)
