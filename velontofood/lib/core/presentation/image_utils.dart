import 'package:flutter/material.dart';

class DisplayImage extends StatelessWidget {
  const DisplayImage(
    this.path, {
    Key? key,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius = 10,
  }) : super(key: key);
  final String? path;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    if (path == null) {
      return PlaceHolderImage(
        width: width,
        height: height,
        fit: fit,
        borderRadius: borderRadius,
      );
    }
    if (path!.contains('http')) {
      // return CachedNetworkImage(
      //   imageUrl: path!,
      //   fit: fit,
      //   width: width,
      //   height: height,
      //   progressIndicatorBuilder: (context, url, downloadProgress) =>
      //       loadingBuilder(context, child, downloadProgress)
      //       ,
      //   errorWidget: (context, url, error) =>
      //       errorBuilder(context, error, null),
      // );
      return Image.network(
        path!,
        fit: fit,
        width: width,
        height: height,
        errorBuilder: errorBuilder,
        loadingBuilder: loadingBuilder,
        frameBuilder: frameBuilder,
      );
    }
    return Image.asset(
      path!,
      width: width,
      fit: fit,
      height: height,
      errorBuilder: errorBuilder,
      frameBuilder: frameBuilder,
    );
  }

  Widget frameBuilder(context, child, frame, wasSynchronouslyLoaded) {
    final Widget decoratedChild = ClipRRect(
      child: child,
      borderRadius: BorderRadius.circular(borderRadius),
    );
    if (wasSynchronouslyLoaded) {
      return decoratedChild;
    }
    return AnimatedOpacity(
      opacity: frame == null ? 0 : 1,
      duration: const Duration(seconds: 1),
      curve: Curves.easeOut,
      child: decoratedChild,
    );
  }

  Widget loadingBuilder(context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
            : null,
      ),
    );
  }

  Widget errorBuilder(context, error, stackTrace) {
    return PlaceHolderImage(
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
    );
  }
}

class PlaceHolderImage extends StatelessWidget {
  const PlaceHolderImage(
      {Key? key,
      this.width,
      this.height,
      this.borderRadius = 10,
      this.fit = BoxFit.cover})
      : super(key: key);
  final double? width;
  final double? height;
  final double borderRadius;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(
        'assets/images/placeholder.png',
        width: width,
        height: height,
        fit: fit,
      ),
    );
  }
}
