import 'dart:io';

import 'package:remon_mobile/gen/locale_keys.g.dart';
import 'package:remon_mobile/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/utils.dart';

class PrimaryImagePicker extends StatefulWidget {
  final File? pickedImage;
  final String? pickedImageUrl;
  final Function(File) onImagePicked;
  final double ratioX;
  final double ratioY;
  final int maxWidth;
  final int maxHeight;
  final String? hintText;
  final double? radius;
  final BoxShape? shape;
  final IconData? icon;

  const PrimaryImagePicker({
    required this.pickedImage,
    required this.onImagePicked,
    required this.ratioX,
    required this.ratioY,
    this.maxWidth = 250,
    this.maxHeight = 250,
    this.pickedImageUrl,
    this.hintText,
    this.radius,
    this.shape,
    this.icon,
    super.key,
  });

  factory PrimaryImagePicker.ProfileImage({
    required File? pickedImage,
    required Function(File) onImagePicked,
    String? pickedImageUrl,
    String? hintText,
    double? radius,
  }) {
    return PrimaryImagePicker(
      pickedImage: pickedImage,
      onImagePicked: onImagePicked,
      pickedImageUrl: pickedImageUrl,
      hintText: hintText,
      radius: radius,
      ratioX: 1,
      ratioY: 1,
      // for compression. we're currently using 120 x 120
      // for profile images, but who knows what the future holds
      // 250 is acceptable for now
      maxWidth: 250,
      maxHeight: 250,
      shape: BoxShape.circle,
      icon: Icons.person,
    );
  }

  @override
  State<PrimaryImagePicker> createState() => _PrimaryImagePickerState();
}

class _PrimaryImagePickerState extends State<PrimaryImagePicker> {
  final picker = ImagePicker();

  void _pick() async {
    final pickedImg = await picker.pickImage(source: ImageSource.gallery);

    if (pickedImg == null) {
      return;
    }

    final path = pickedImg.path;

    final croppedImage = await ImageCropper.platform.cropImage(
      sourcePath: path,
      maxWidth: widget.maxWidth,
      maxHeight: widget.maxHeight,
      aspectRatio: CropAspectRatio(
        ratioX: widget.ratioX,
        ratioY: widget.ratioY,
      ),
    );

    if (croppedImage == null) {
      return;
    }

    final file = File(croppedImage.path);

    widget.onImagePicked(file);
  }

  @override
  Widget build(BuildContext context) {
    var decoration = BoxDecoration(
      border: Border.all(
        width: 1,
        color: Theme.of(context).primaryImagePickerBorder,
      ),
    );

    if (widget.radius != null) {
      decoration = decoration.copyWith(
        borderRadius: BorderRadius.circular(widget.radius ?? 0),
      );
    }

    if (widget.shape != null) {
      decoration = decoration.copyWith(
        shape: widget.shape,
      );
    }

    final imgRadius =
        widget.radius ?? (widget.shape == BoxShape.circle ? 100 : 0);

    return AspectRatio(
      aspectRatio: widget.ratioX / widget.ratioY,
      child: Container(
        decoration: decoration,
        child: widget.pickedImage != null
            ? Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(imgRadius),
                  onTap: _pick,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(imgRadius),
                    child: Image.file(
                      widget.pickedImage!,
                      width: widget.maxWidth.toDouble(),
                      height: widget.maxHeight.toDouble(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(imgRadius),
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: _pick,
                  child: widget.pickedImageUrl != null
                      ? Image.network(
                          widget.pickedImageUrl!,
                          width: widget.maxWidth.toDouble(),
                          height: widget.maxHeight.toDouble(),
                          fit: BoxFit.cover,
                        )
                      : (widget.icon != null
                          ? Icon(
                              widget.icon!,
                              size: 60,
                            )
                          : Text(
                              widget.hintText ??
                                  getStr(LocaleKeys
                                      .image_picker_widget_default_hint),
                              textAlign: TextAlign.center,
                            )),
                ),
              ),
      ),
    );
  }
}
