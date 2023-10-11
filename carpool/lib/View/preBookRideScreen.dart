// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

import '../CustomWidgets/mapwidget.dart';

class preBookRideScreen extends StatelessWidget {
  const preBookRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for a place...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Expanded(
              child: MapWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
