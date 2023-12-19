import 'package:dio/dio.dart';
import 'package:project_mobile_flutter/connection/api/client.dart';
import 'package:project_mobile_flutter/model/item_model.dart';

class ItemService {
  //Ambil Data Semua
  Future<ItemResponse> listData() async {
    try {
      final Response response = await Api().get('items');
      return ItemResponse.fromJson(response.data);
    } catch (error) {
      throw Exception('Failed to fetch items: $error');
    }
  }

  //Cari berdasarkan ID
  Future<Item> getById(String id) async {
    final Response response = await Api().get('items/${id}');
    Item result = Item.fromJson(response.data);
    return result;
  }

  //Hapus Data
  Future<Item> delete(Item item) async {
    print('Deleting resource with ID: ${item.id}');
    final Response response = await Api().delete('items/${item.id}');
    Item result = Item.fromJson(response.data);
    return result;
  }

  //Tambah Data
  Future<Item> simpan(Item item) async {
    var data = item.toJson();
    final Response response = await Api().post("items", data);
    Item result = Item.fromJson(response.data);
    return result;
  }

  //Ubah Data
  Future<Item> ubah(Item item, String id) async {
    var data = item.toJson();
    final response = await Api().put("items/${id}", data);
    print(response);
    Item result = Item.fromJson(response.data);
    return result;
  }
}
