import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../screens/nft_screen.dart';

class ImageListView extends StatefulWidget {
  const ImageListView({Key? key, required this.startIndex, this.duration = 30})
      : super(key: key);

  final int startIndex;

  final int duration;

  @override
  _ImageListViewState createState() => _ImageListViewState();
}

class _ImageListViewState extends State<ImageListView> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      //Detect if is at the end of list view
      if (_scrollController.position.atEdge) {
        _autoScroll();
      }
    });

    //Add this to make sure that controller has been attacted to List View
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });
  }

  _autoScroll() {
    final currentScrollPosition = _scrollController.offset;

    final scrollEndPosition = _scrollController.position.maxScrollExtent;

    scheduleMicrotask(() {
      _scrollController.animateTo(
        currentScrollPosition == scrollEndPosition ? 0 : scrollEndPosition,
        duration: Duration(seconds: widget.duration),
        curve: Curves.linear,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      origin: const Offset(200, 40),
      angle: 1.96 * pi,
      child: SizedBox(
        height: 130,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => NFTScreen(
                        image:
                            'assets/images/nft_bored_ape/${widget.startIndex + index}.png'),
                  ),
                ).then((value) {
                  setState(() {
                    _scrollController = ScrollController();
                    _scrollController.addListener(() {
                      //Detect if is at the end of list view
                      if (_scrollController.position.atEdge) {
                        _autoScroll();
                      }
                    });
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      _autoScroll();
                    });
                  });
                });
              },
              child: Hero(
                tag:
                    'assets/images/nft_bored_ape/${widget.startIndex + index}.png',
                child: Image.asset(
                  'assets/images/nft_bored_ape/${widget.startIndex + index}.png',
                  width: 130,
                ),
              ),
            );
            // _ImageTile(
            //     image: 'assets/nft_bored_ape/${widget.startIndex + index}.png');
          },
        ),
      ),
    );
  }
}

// class _ImageTile extends StatelessWidget {
//   const _ImageTile({Key? key, required this.image}) : super(key: key);
//
//   final String image;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (_) => NFTScreen(image: image)),
//         );
//       },
//       child: Hero(
//         tag: image,
//         child: Image.asset(
//           image,
//           width: 130,
//         ),
//       ),
//     );
//   }
// }
