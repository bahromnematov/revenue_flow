import 'package:flutter/material.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

class ScrollableTabViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable List Tab View'),
      ),
      body: ScrollableListTabView(
        tabs: [
          ScrollableListTab(
            tab: ListTab(
              label: Text('Tab 1'),
              icon: Icon(Icons.star),
            ),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item ${index + 1} in Tab 1'),
                );
              },
            ),
          ),
          ScrollableListTab(
            tab: ListTab(
              label: Text('Tab 2'),
              icon: Icon(Icons.favorite),
            ),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item ${index + 1} in Tab 2'),
                );
              },
            ),
          ),
          ScrollableListTab(
            tab: ListTab(
              label: Text('Tab 3'),
              icon: Icon(Icons.person),
            ),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item ${index + 1} in Tab 3'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
