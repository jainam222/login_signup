import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>
          LinearGradient(
            colors: [Colors.black, Colors.black26],
            begin: Alignment.bottomCenter,
            end: Alignment.center,
          ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?cs=srgb&dl=pexels-jacob-colvin-1761279.jpg&fm=jpg'),
            colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
