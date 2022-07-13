import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text("Notifications"),
              trailing: Switch(
                value: isSwitchOn,
                onChanged: (val) {
                  setState(() {
                    isSwitchOn = val;
                  });
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.abc_outlined),
              title: const Text("About us"),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => const AboutDialog());
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text("Share app"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Shared app"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
