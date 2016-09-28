require 'csv'

class Main

  CSV_FILE = "./climate-vulnerability.csv"

  def initialize
    @climate_data = CSV.read(CSV_FILE)
  end

  def list_index_scores country_code
    @climate_data.select {|row| row[0] == country_code}
  end

  def average_index_score country_code
    rows = @climate_data.select {|row| row[0] == country_code}
    total = rows.reduce(0) {|total, row| total += row.last.to_f}
    total/rows.count
  end

end

main = Main.new

p main.list_index_scores 'ES'
p main.average_index_score 'ES'
