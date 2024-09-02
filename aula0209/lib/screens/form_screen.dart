import 'package:flutter/material.dart';
import '../models/item.dart';
import 'list_screen.dart';
import '../widgets/custom_text_field.dart';
import '../utils/validators.dart';

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final List<Item> _items = [];

  void _addItem() {
    if (_formKey.currentState?.validate() ?? false) {
      final newItem = Item(
        title: _titleController.text,
        description: _descriptionController.text,
      );
      setState(() {
        _items.add(newItem);
      });
      _titleController.clear();
      _descriptionController.clear();
    }
  }

  void _goToListScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ListScreen(items: _items),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Item')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                controller: _titleController,
                labelText: 'Título',
                validator: (value) => validateNotEmpty(value, 'Título'),
              ),
              CustomTextField(
                controller: _descriptionController,
                labelText: 'Descrição',
                validator: (value) => validateNotEmpty(value, 'Descrição'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _addItem,
                child: Text('Adicionar Item'),
              ),
              ElevatedButton(
                onPressed: _goToListScreen,
                child: Text('Ver Lista'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
