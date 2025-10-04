import 'package:flutter/material.dart';

class TapPage extends StatelessWidget {
  TapPage({Key? key}) : super(key: key);

  final List<Color> _color = const [
    Color(0XFF283E51),
    Color(0XFF834d9b),
    Color(0XFFF11712),
    Color(0XFF0099F7),
    Color(0XFFD39D38),
    Color(0XFF4DA0B0),
    Color(0XFFF29492),
    Color(0XFFa044ff),
    Color(0XFFF15F79),
    Color(0XFF1F1C18),
    Color(0XFF8DC26F),
  ];

  final _containerHeight = 300.0;
  final ScrollController _scrollController = ScrollController();

  void _scrollToTap(int index) {
    _scrollController.animateTo(
      index * _containerHeight,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListViews Builder'), centerTitle: true),
      body: Column(
        children: [
          //horizonal listviews
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _color.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    _scrollToTap(index);
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    height: 100,
                    width: 100,
                    color: _color[index],
                    child: Text('${index + 1}', style: TextStyle(fontSize: 20)),
                  ),
                );
              },
            ),
          ),
          //vertical listviews
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _color.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  height: _containerHeight,
                  color: _color[index],
                  child: Text("${index + 1}", style: TextStyle(fontSize: 50)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
