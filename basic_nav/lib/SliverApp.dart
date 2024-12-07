import 'package:flutter/material.dart';

void main() => runApp(const sliver());

class sliver extends StatelessWidget {
  const sliver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SliverAppBarExample(),
    );
  }
}

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar
          SliverAppBar(
            expandedHeight: 200.0, 
            floating: false, 
            pinned: true, 
            backgroundColor: Colors.blue, 
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('SliverAppBar Example'),
              background: FlutterLogo(),
            ),
          ),
          // Konten gulir
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item ${1 + index}'),
                );
              },
              childCount: 50, // Jumlah item dalam list
            ),
          ),
        ],
      ),
    );
  }
}