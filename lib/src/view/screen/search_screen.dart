import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  final TextEditingController _controller = TextEditingController();

  void _searchNow(BuildContext context) async {
    final query = _controller.text.trim();
    if (query.isEmpty) return;

    final url = Uri.parse("https://www.google.com/search?q=${Uri.encodeComponent(query)}");

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open browser')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Search Browser", style: TextStyle(color: Colors.black)),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: _controller,
          onSubmitted: (_) => _searchNow(context),
          textInputAction: TextInputAction.search,
          decoration: InputDecoration(
            hintText: 'Type your search and press enter...',
            suffixIcon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => _searchNow(context),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
