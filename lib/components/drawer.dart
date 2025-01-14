import "package:flutter/material.dart";
import "package:notes_app/components/drawer_tile.dart";
import "package:notes_app/pages/settings_page.dart";

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(Icons.note),
          ),

          //notes tile

          DrawerTile(
              title: "Notes",
              leading: Icon(Icons.home),
              onTap: () => Navigator.pop(context)),

          // setting tile
          DrawerTile(
              title: "Settings",
              leading: Icon(Icons.settings),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingsPage())))
        ],
      ),
    );
  }
}
