import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String imageLink;

  final String title;

  final Function callBack;

  final bool active;

  const MovieCard(
      {super.key,
      required this.title,
      required this.imageLink,
      required this.callBack,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              onTap: callBack as void Function()?,
              child: SizedBox(
                width: active
                    ? MediaQuery.of(context).size.width / 3
                    : MediaQuery.of(context).size.width / 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.network(imageLink),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(active ? title : '',
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
