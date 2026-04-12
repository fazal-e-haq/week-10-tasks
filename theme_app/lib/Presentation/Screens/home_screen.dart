import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_app/Providers/theme_changer_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Theme'),
        actions: [
          // Theme changer
          Switch(
            padding: .symmetric(horizontal: 20),
            value: Provider.of<ThemeChangerProvider>(context).isdark,
            onChanged: (_) {
              context.read<ThemeChangerProvider>().toggleTheme();
            },
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
