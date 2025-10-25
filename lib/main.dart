import 'package:flutter/material.dart';

void main() {
  runApp(const ContactListApp());
}

class ContactListApp extends StatelessWidget {
  const ContactListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListPage(),
    );
  }
}

class ContactListPage extends StatelessWidget {
  ContactListPage({super.key});

  final List<Map<String, String>> contacts = [
    {"name": "Jawad", "number": "01877-777777"},
    {"name": "Ferdous", "number": "01673-777777"},
    {"name": "Hasan", "number": "01745-777777"},
    {"name": "Hasan", "number": "01745-777777"},
    {"name": "Hasan", "number": "01745-777777"},
  ];

  final nameController = TextEditingController(text: "Hasan");
  final numberController = TextEditingController(text: "01745-777777");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Contact List",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Name input
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),

            // Phone input
            TextFormField(
              controller: numberController,
              decoration: const InputDecoration(
                hintText: "Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),

            // Add Button
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                child: const Text("Add", style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),

            // Contact List
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  final contact = contacts[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: const Icon(Icons.person, color: Colors.brown, size: 35),
                      title: Text(
                        contact["name"]!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                      subtitle: Text(contact["number"]!),
                      trailing: const Icon(Icons.phone, color: Colors.blue),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
