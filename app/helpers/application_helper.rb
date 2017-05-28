module ApplicationHelper

  @@current_date = DateTime.now.to_date

  def current_day
    l @@current_date, format: :day
  end

  def current_month
    l @@current_date, format: :month
  end

  def current_year
    @@current_date.year
  end

  def get_day
    search_date = @@current_date.change(year: 0004)
    Day.find_by_date(search_date)
  end

end
