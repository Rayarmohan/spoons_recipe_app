import 'package:flutter/material.dart';
import 'package:spoons/constants/text_styles.dart';

class ListContainer extends StatefulWidget {
  final String itemname;
  final String itemtime;
  final String imageUrl;

  const ListContainer(
      {super.key,
      required this.itemname,
      required this.itemtime,
      required this.imageUrl});

  @override
  State<ListContainer> createState() => _ListContainerState();
}

class _ListContainerState extends State<ListContainer> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 250,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              elevation: 8,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 102,
                      ),
                      Text(
                        style: AppTextStyles.itemNameTextStyle,
                        softWrap: true, // Enable line wrapping
                        overflow: TextOverflow.visible,
                        widget.itemname,
                        maxLines: 2,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.timer_rounded),
                          Text(widget.itemtime),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      Positioned(
        left: 8,
        top: 1,
        child: CircleAvatar(
          backgroundImage: NetworkImage(widget.imageUrl),
          radius: 90,
        ),
      ),
      Positioned(
        bottom: 30,
        left: 150,
          child: IconButton(
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
        color: isFavorite ? Colors.red : null,
      ),
    ),
    )
    ]);
  }
}
