import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Text('CHATS'),
              Text('STATUS'),
              Text('CALLS'),
            ],
          ),
          actions: [
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => const [
                      PopupMenuItem(value: 1, child: Text('New group')),
                      PopupMenuItem(value: 2, child: Text('New broadcast')),
                      PopupMenuItem(value: 3, child: Text('Linked devices')),
                      PopupMenuItem(value: 4, child: Text('Starred messages')),
                    ])
          ],
        ),
        body: TabBarView(children: [
          const Text('Camera'),
          ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i.insider.com/582d97c0dd0895526d8b4a08?width=1000&format=jpeg&auto=webp'),
                  ),
                  title: Text('Mark Zukerberg'),
                  subtitle: Text('Who are you ?'),
                  trailing: Text('11:49 PM'),
                );
              }),
          ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i.insider.com/582d97c0dd0895526d8b4a08?width=1000&format=jpeg&auto=webp'),
                  ),
                  title: Text('Mark Zukerberg'),
                  subtitle: Text('Who are you ?'),
                  trailing: Text('11:49 PM'),
                );
              }),
          ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i.insider.com/582d97c0dd0895526d8b4a08?width=1000&format=jpeg&auto=webp'),
                  ),
                  title: Text('Mark Zukerberg'),
                  subtitle: Text('You missed call'),
                  trailing: Icon(
                    Icons.call_end,
                    color: Colors.red,
                  ),
                );
              }),
        ]),
      ),
    );
  }
}
