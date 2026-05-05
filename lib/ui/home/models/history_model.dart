class HistoryModel{
  final String name;
  final int price;
  final DateTime datetime;

  HistoryModel({
    required this.name,
    required this.price,
    required this.datetime,
  });

}

final history = [
  HistoryModel(
    name: 'Penjualan 1',
    price: 500000,
    datetime: DateTime(2026, 5, 1, 2, 32),
  ),
  HistoryModel(
    name: 'Penjualan 2',
    price: 500000,
    datetime: DateTime(2026, 5, 1, 2, 32),
  ),
  HistoryModel(
    name: 'Penjualan 3',
    price: 500000,
    datetime: DateTime(2026, 5, 1, 2, 32),
  ),
];