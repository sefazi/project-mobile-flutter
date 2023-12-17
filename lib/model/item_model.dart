class Item {
  int? id;
  String? poli;
  String? judul;

  Item({this.id, this.poli, this.judul});

  factory Item.fromJson(Map<String, dynamic> json) =>
      Item(id: json['id'], poli: json['poli']);

  Map<String, dynamic> toJson() => {'poli': poli};
}
