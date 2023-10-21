import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12)
            // color: Colors.green,
            ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () => {},
                    icon: const Icon(
                      Icons.search,
                      size: 25,
                      color: Colors.black54,
                    ))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Search...",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
