part of 'fonts_tile_widget.dart';

class _FontsDetailsWidget extends StatelessWidget {
  const _FontsDetailsWidget({required this.textStyle});

  final TextStyle textStyle;

  String get _setFontStyle =>
      textStyle.fontStyle == FontStyle.italic ? 'Italic' : 'Normal';

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 4),
          _buildChips(),
          _buildMoreData(),
          const Divider(),
          const SizedBox(height: 4)
        ],
      );

  Widget _buildChips() => Row(
        children: <Widget>[
          AvatarChipWidget(
            avatarText: 'F',
            label: '${textStyle.fontFamily!}',
          ),
          const SizedBox(width: 10),
          AvatarChipWidget(label: '${textStyle.fontSize!}'),
          const SizedBox(width: 10),
          AvatarChipWidget(
            avatarText: 'W',
            label: _setFontWeightType(textStyle.fontWeight),
          ),
          const SizedBox(width: 10),
          AvatarChipWidget(
            avatarText: 'S',
            label: _setFontStyle,
          ),
        ],
      );

  Widget _buildMoreData() => Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              const Text('Weight'),
              const SizedBox(height: 2),
              Text(_setFontWeight(textStyle.fontWeight)),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            children: <Widget>[
              const Text('Style'),
              const SizedBox(height: 2),
              Text(textStyle.fontStyle != null ? _setFontStyle : '-'),
            ],
          ),
          const SizedBox(width: 20),
          _buildColorAvatar(),
          const SizedBox(width: 20),
          _buildFirstColumnColorData(textStyle.color!),
          const SizedBox(width: 20),
          _buildSecondColumnColorData(textStyle.color!),
        ],
      );

  Widget _buildColorAvatar() => Column(
        children: <Widget>[
          const Text('Color'),
          const SizedBox(height: 2),
          Container(
            height: 16,
            width: 16,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: textStyle.color,
            ),
          )
        ],
      );

  String _setFontWeight(FontWeight? fontWeight) {
    switch (fontWeight) {
      case FontWeight.w100:
        return 'w100';
      case FontWeight.w200:
        return 'w200';
      case FontWeight.w300:
        return 'w300';
      // normal
      case FontWeight.w400:
        return 'w400';
      case FontWeight.w500:
        return 'w500';
      case FontWeight.w600:
        return 'w600';
      // bold
      case FontWeight.w700:
        return 'w700';
      case FontWeight.w800:
        return 'w800';
      case FontWeight.w900:
        return 'w900';
      default:
        return 'w100';
    }
  }

  String _setFontWeightType(FontWeight? fontWeight) {
    switch (fontWeight) {
      case FontWeight.w100:
        return 'Thin';
      case FontWeight.w200:
        return 'Extra-light';
      case FontWeight.w300:
        return 'Light';
      // normal
      case FontWeight.w400:
        return 'Normal';
      case FontWeight.w500:
        return 'Medium';
      case FontWeight.w600:
        return 'Semi-Bold';
      // bold
      case FontWeight.w700:
        return 'Bold';
      case FontWeight.w800:
        return 'Extra-Bold';
      case FontWeight.w900:
        return 'Thick';
      default:
        return 'Thin';
    }
  }

  Widget _buildFirstColumnColorData(Color color) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ColorCodeWidget(title: 'R', value: color.red),
          ColorCodeWidget(title: 'B', value: color.blue),
        ],
      );

  Widget _buildSecondColumnColorData(Color color) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ColorCodeWidget(title: 'G', value: color.green),
          ColorCodeWidget(title: 'A', value: color.alpha)
        ],
      );
}
