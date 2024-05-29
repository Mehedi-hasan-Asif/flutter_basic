
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({super.key});

  @override
  State<AddProductScreen> createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController _nameTECcontroller = TextEditingController();
  final TextEditingController _unitPriceTECcontroller = TextEditingController();
  final TextEditingController _quantityTECcontroller = TextEditingController();
  final TextEditingController _totalPriceTECcontroller = TextEditingController();
  final TextEditingController _imageTECcontroller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Item'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameTECcontroller,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration:  const InputDecoration(
                    hintText: 'Name',
                    labelText: 'Name'
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Write your product name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _unitPriceTECcontroller,
                  keyboardType: TextInputType.number,
                  decoration:  const InputDecoration(
                      hintText: 'Unit Price',
                      labelText: 'Unit Price'
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Write your product Unit Price';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _quantityTECcontroller,
                  keyboardType: TextInputType.number,
                  decoration:  const InputDecoration(
                      hintText: 'Quantity',
                      labelText: 'Quantity'
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Write your product Qunatity';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                  controller: _totalPriceTECcontroller,
                  keyboardType: TextInputType.number,
                  decoration:  const InputDecoration(
                      hintText: 'Total Price',
                      labelText: 'Total Price'
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Write your product Total Price';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _imageTECcontroller,
                  decoration: const InputDecoration(
                    hintText: 'Image',
                    labelText: 'Image'
                  ),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Write your product name';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                ElevatedButton(onPressed: (){
                  if(_formKey.currentState!.validate()){}
                }, child: const Text('Add'))

              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _nameTECcontroller.dispose();
    _quantityTECcontroller.dispose();
    _unitPriceTECcontroller.dispose();
    _totalPriceTECcontroller.dispose();
    _imageTECcontroller.dispose();
    super.dispose();
  }
}
