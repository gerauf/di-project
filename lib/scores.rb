require 'csv'

class Scores
  def initialize(file)
    @climate_data = CSV.read(file)
  end

  def list(country_code)
    list = {}
    country_rows(country_code).each { |row| add_to_list(list, row) }
    list
  end

  def average(country_code)
    rows = country_rows(country_code)
    total = sum_scores(rows)
    (total/rows.count).round(3)
  end

  private
  def country_rows(country_code)
    @climate_data.select { |row| row[0] == country_code && has_score?(row) }
  end

  def sum_scores(rows)
    rows.inject(0) { |total, row| total += row[2].to_f }
  end

  def has_score?(row)
    !row[2].nil?
  end

  def add_to_list(list, row)
    list[row[1].to_i] = row[2].to_f
  end
end
