// ...existing code...
import 'package:flutter/material.dart';
import '../models/service.dart';

class ServiceCard extends StatelessWidget {
  final Service service;

  const ServiceCard({required this.service, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(service.imagePath),
        title: Text(service.title),
        subtitle: Text(service.description),
      ),
    );
  }
}
