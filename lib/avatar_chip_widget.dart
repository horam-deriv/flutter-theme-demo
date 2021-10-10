import 'package:flutter/material.dart';

/// Shows an avatar in the Fonts screen.
class AvatarChipWidget extends StatelessWidget {
  /// construct an avatar to identify font information in each font tile.
  const AvatarChipWidget({
    required this.label,
    this.avatarText,
  });

  /// color name.
  final String? avatarText;

  ///
  final String label;

  @override
  Widget build(BuildContext context) => Chip(
        backgroundColor: Colors.grey.shade300,
        padding: const EdgeInsets.all(2),
        avatar: avatarText != null
            ? CircleAvatar(
                backgroundColor: Colors.grey.shade100,
                child: Text(
                  avatarText!,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.black87),
                ),
              )
            : null,
        label: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.black87),
        ),
      );
}
