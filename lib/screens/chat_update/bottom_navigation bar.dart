import 'package:flutter/material.dart';
import 'package:vibe_tag/screens/chat_update/chat_update.dart';


class MyHomePageChatUpdate extends StatefulWidget {
  @override
  _MyHomePageChatUpdateState createState() => _MyHomePageChatUpdateState();
}

class _MyHomePageChatUpdateState extends State<MyHomePageChatUpdate> {
  int _selectedIndex = 0;

  final List<Widget> _tabViews = [
    ChatUpdate(),
Container(),
    Container()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F4FB),
      body: _tabViews[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        height: 65,
        elevation: 0,
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildTabItem(0, 'Chats', 'Asset/icons/chat_update/Chat-3.png'),
            _buildTabItem(1, 'Calls', 'Asset/icons/chat_update/Calling.png'),
            _buildTabItem(2, 'Moments', 'Asset/icons/chat_update/Heart-3.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(int index, String title, String imagePath) {
    bool isSelected = index == _selectedIndex;
    return InkWell(
      onTap: () => _onTabTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 24.0,
            height: 24.0,
            color: isSelected ? Color(0xffFF9200) : Color(0xffBBC4D9),
          ),
          SizedBox(height: 4.0),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Color(0xffFF9200) : Color(0xffBBC4D9),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class TabView extends StatelessWidget {
  final String imagePath;

  TabView({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(imagePath),
    );
  }
}
