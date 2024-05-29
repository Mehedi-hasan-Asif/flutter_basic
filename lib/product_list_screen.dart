import 'package:flutter/material.dart';
import 'package:flutter_basic/add_product_screen.dart';
import 'package:flutter_basic/update_product_list.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product list'),
      ),
      body: ListView.separated(
          itemCount: 5,
          itemBuilder: (context, index) {
            return _buildProductItem();
          },
          separatorBuilder: (_, __) => const Divider()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const  AddProductScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildProductItem() {
    return ListTile(
      leading: Image.network("https://search.app.goo.gl/Pt6kf3K",
          height: 60, width: 60),
      title:  const Text('Product Name'),
      subtitle: const Wrap(
        spacing: 16,
        children: [
          Text('Product Price :100'),
          Text('Quatitiy :100'),
          Text('Total Price :1000'),
        ],
      ),
      trailing: Wrap(children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  const UpdateProductScreen(),
                ),
              );
            },
            icon:const Icon(Icons.edit)),
        IconButton(onPressed: () {
          _showDeleteConfirmationDialog();
        }, icon:  const Icon(Icons.delete)),
      ]),
    );
  }

  void _showDeleteConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete'),
          content: const Text(
              'Are you sure that you want to delete this product?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Yes, delete'),
            ),
          ],
        );
      },
    );
  }
}


