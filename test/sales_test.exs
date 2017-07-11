defmodule SalesTest do
  use ExUnit.Case
  # doctest Sales

  test "exclude_weekends should return a list of deals shorter once weekend deals excluded" do
    assert Sales.exclude_weekends(deals).length < deals.length
  end

  test "group_by_date should return a list" do
    assert is_list Sales.group_by_date == true
  end

  test "process_amounts should return the good total" do
    deals = [
      %{id: 1, amount: 1000, closed_at: ~N[2016-11-01 08:10:00]},
      %{id: 2, amount: 1000, closed_at: ~N[2016-11-01 12:20:00]},
      %{id: 3, amount: 1000, closed_at: ~N[2016-11-01 23:30:00]}]
    assert Sales.process_amounts(deal) == 3000
  end

end
