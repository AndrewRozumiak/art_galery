import 'package:flutter/material.dart';

import '../database_helper/database_helper.dart';

class Ivents extends StatelessWidget {
  const Ivents({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: DatabaseHelper.instance.getToysMapList(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final events = snapshot.data!;
        return ListView.builder(
            itemCount: events.length,
            itemBuilder: (context, index) {
              final event = events[index];
              return GestureDetector(
                onTap: () => _showEventDetails(context, event),
                child: Card(
                  margin: const EdgeInsets.all(8),
                  child: ListTile(
                    leading: Image.asset(
                      event['iventsPhotoPath'],
                      fit: BoxFit.cover,
                    ),
                    title: Text(event['iventsTitle'], style: const TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
              );
            },
          );
      },
    );
  }

  void _showEventDetails(BuildContext context, Map<String, dynamic> event) {
    showDialog(
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Image.asset(
                  event['iventsPhotoPath'],
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    event['iventsTitle'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    event['iventsDescription'],
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  }
