import 'package:project_mobile_flutter/connection/service/item_service.dart'; // Import your ItemService
import 'package:project_mobile_flutter/model/item_model.dart';
import 'package:flutter/material.dart';

class SimpleWidget extends StatefulWidget {
  @override
  _SimpleWidgetState createState() => _SimpleWidgetState();
}

class _SimpleWidgetState extends State<SimpleWidget> {
  Stream<ItemResponse> getList() async* {
    ItemResponse data = await ItemService().listData();
    yield data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Sidebar(),
      appBar: AppBar(
        title: const Text('Data Item'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            // onTap: () {
            //   Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => PoliForm()));
            // },
          ),
        ],
      ),
      body: StreamBuilder(
          stream: getList(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            } else if (snapshot.connectionState != ConnectionState.done) {
              return Center(child: Text("Loading..."));
            } else if (!snapshot.hasData &&
                snapshot.connectionState == ConnectionState.done) {
              return Text('Data Kosong');
            } else {
              ItemResponse apiResponse = snapshot.data!;
              return ListView.builder(
                  itemCount: apiResponse.total,
                  itemBuilder: (context, index) {
                    List<Item>? items = apiResponse.data!;
                    return ItemItem(poli: items[index]);
                  });
            }
          }),
    );
  }
}

class ItemItem extends StatelessWidget {
  final Item poli;
  const ItemItem({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${poli.judul}"),
        ),
      ),
      // onTap: () {
      //   Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)));
      // },
    );
  }
}
