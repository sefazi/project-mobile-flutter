class Item {
  int? id;
  String? judul;
  String? bahan;
  String? caraPembuatan;
  String? picture;
  String? status;
  int? userId;

  Item(
      {this.id,
      this.judul,
      this.bahan,
      this.caraPembuatan,
      this.picture,
      this.status,
      this.userId});

  factory Item.fromJson(Map<String, dynamic> json) => Item(
      id: json['id'],
      judul: json['judul'],
      bahan: json['bahan'],
      caraPembuatan: json['cara_pembuatan'],
      picture: json['picture'],
      status: json['status'],
      userId: json['user_id']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'judul': judul,
        'bahan': bahan,
        'cara_pembuatan': caraPembuatan,
        'picture': picture,
        'status': status,
        'user_id': userId,
      };
}

class ItemResponse {
  List<Item>? data;
  int? total;
  bool? success;
  String? message;

  ItemResponse({
    this.data,
    this.total,
    this.success,
    this.message,
  });

  factory ItemResponse.fromJson(Map<String, dynamic> json) => ItemResponse(
        data: (json['data'] as List<dynamic>?)
            ?.map((item) => Item.fromJson(item))
            .toList(),
        total: json['total'],
        success: json['success'],
        message: json['message'],
      );
}
