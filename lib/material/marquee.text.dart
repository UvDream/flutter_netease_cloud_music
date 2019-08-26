import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

///默认的滚动速度
const double _default_speed = 50.0;

///默认的两个文本之间的间隔
const double _default_gap = 10.0;

///默认字体的放大倍数
const double _default_text_scale_factor = 1.0;

class MarqueeText extends StatelessWidget {
  const MarqueeText(
    this.data, {
    Key key,
    this.style,
    this.locale,
    this.gap = _default_gap,
    this.speed = _default_speed,
    this.textScaleFactor,
  })  : assert(data != null),
        this.textSpan = null,
        super(key: key);

  const MarqueeText.rich(
    this.textSpan, {
    Key key,
    this.style,
    this.gap = _default_gap,
    this.speed = _default_speed,
    this.locale,
    this.textScaleFactor,
  })  : assert(textSpan != null),
        data = null,
        super(key: key);

  /// 待显示的文本，如果[textSpan]提供了则不会null
  final String data;

  /// 待显示的文本，如果[data]提供了则不会null
  final TextSpan textSpan;

  ///字体的style,如果为空则用系统默认的style，
  final TextStyle style;

  /// 滚动速度，单位为 dp/秒
  final double speed;

  /// 区域设置 默认会通过Localizations.localeOf(context)得到
  final Locale locale;

  /// 滚动的文本之间的间隔，单位为dp
  final double textScaleFactor;

  /// 滚动的文本之间的间隔，单位为dp
  final double gap;

  @override
  Widget build(BuildContext context) {
    final DefaultTextStyle defaultTextStyle = DefaultTextStyle.of(context);
    TextStyle effectiveTextStyle = style;
    if (style == null || style.inherit) {
      effectiveTextStyle = defaultTextStyle.style.merge(style);
    }

    if (MediaQuery.boldTextOverride(context)) {
      effectiveTextStyle = effectiveTextStyle
          .merge(const TextStyle(fontWeight: FontWeight.bold));
    }

    Widget result = MarqueeRichText(
      locale: locale,
      speed: speed,
      gap: gap,
      textScaleFactor: textScaleFactor ?? MediaQuery.textScaleFactorOf(context),
      text: TextSpan(
        style: effectiveTextStyle,
        text: data,
        children: textSpan != null ? <TextSpan>[textSpan] : null,
      ),
    );

    return result;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('data', data, showName: false));
    if (textSpan != null) {
      properties.add(textSpan.toDiagnosticsNode(
          name: 'textSpan', style: DiagnosticsTreeStyle.transition));
    }
    properties.add(
        DoubleProperty('textScaleFactor', textScaleFactor, defaultValue: null));
    properties
        .add(DoubleProperty('spped', speed, defaultValue: _default_speed));
    properties.add(DoubleProperty('gap', gap, defaultValue: _default_gap));
  }
}

class MarqueeRichText extends StatefulWidget {
  ///待展示的文本
  final TextSpan text;

  /// 滚动速度，单位为 dp/秒
  final double speed;

  /// 字体的缩放比例 例如缩放因子为1.5则文本将设置的字体大小放大50%
  final double textScaleFactor;

  /// 区域设置 默认会通过Localizations.localeOf(context)得到
  final Locale locale;

  /// 滚动的文本之间的间隔，单位为dp
  final double gap;

  /// Creates a marquee rich text widget.
  ///
  /// The [text], [gap], [speed] and [textScaleFactor]
  /// arguments must not be null.
  const MarqueeRichText(
      {Key key,
      @required this.text,
      this.gap = _default_gap,
      this.locale,
      this.textScaleFactor = _default_text_scale_factor,
      this.speed = _default_speed})
      : assert(text != null),
        assert(gap != null && gap > 0),
        assert(speed != null && speed > 0),
        super(key: key);

  @override
  State createState() {
    return _MarqueRichTextState();
  }
}

/// The state of  marquee text
class _MarqueRichTextState extends State<MarqueeRichText>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new _MarqueRenderObjectWidget(
      text: widget.text,
      gap: widget.gap,
      locale: widget.locale,
      textScaleFactor: widget.textScaleFactor,
      speed: widget.speed,
      vsync: this,
    );
  }
}

class _MarqueRenderObjectWidget extends LeafRenderObjectWidget {
  /// MarqueeRichText的render object
  ///
  ///[text] 参数 不能为空

  const _MarqueRenderObjectWidget({
    Key key,
    @required this.text,
    this.textScaleFactor = 1.0,
    this.speed,
    this.vsync,
    this.locale,
    this.gap,
  })  : assert(text != null),
        assert(textScaleFactor != null),
        super(key: key);

  final TextSpan text;
  final double speed;
  final double textScaleFactor;
  final Locale locale;
  final double gap;

  /// See [TickerProvider] for more information.
  final TickerProvider vsync;

  @override
  _MarqueeRenderParagraph createRenderObject(BuildContext context) {
    return _MarqueeRenderParagraph(text,
        locale: locale,
        vsync: vsync,
        speed: speed,
        gap: gap,
        textScaleFactor: textScaleFactor);
  }

  @override
  void updateRenderObject(
      BuildContext context, _MarqueeRenderParagraph renderObject) {
    renderObject
      ..text = text
      ..speed = speed
      ..vsync = vsync
      ..gap = gap
      ..textScaleFactor = textScaleFactor
      ..locale = locale ?? Localizations.localeOf(context, nullOk: true);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('textScaleFactor', textScaleFactor,
        defaultValue: _default_text_scale_factor));
    properties
        .add(DoubleProperty('spped', speed, defaultValue: _default_speed));
    properties.add(DoubleProperty('gap', gap, defaultValue: _default_gap));
    properties.add(StringProperty('text', text.toPlainText()));
  }
}

class _MarqueeRenderParagraph extends RenderBox {
  AnimationController _controller;
  Animation<double> _animation;
  double _width;
  TextPainter _textPainter;

  _MarqueeRenderParagraph(TextSpan textSpan,
      {Locale locale,
      TickerProvider vsync,
      double speed,
      double gap,
      double textScaleFactor})
      : assert(textSpan != null),
        assert(textSpan.debugAssertIsValid()),
        _vsync = vsync,
        _speed = speed,
        _gap = gap,
        _textPainter = new TextPainter(
          text: textSpan,
          textDirection: TextDirection.ltr,
          locale: locale,
          textAlign: TextAlign.start,
          textScaleFactor: textScaleFactor,
          maxLines: 1,
        ) {
    _textPainter.layout();
    _width = _textPainter.size.width + _gap;
    double duration = (_width * 1000) / speed;
    _controller = new AnimationController(
      vsync: vsync,
      duration: new Duration(milliseconds: duration.ceil()),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addListener(() {
      markNeedsPaint();
    });
    _controller.repeat();
  }

  @override
  void detach() {
    _controller.stop();
    super.detach();
  }

  bool get isRepaintBoundary => true;

  /// 文本滚动的速度
  double _speed;

  set speed(double value) {
    assert(value != null);
    if (value == _speed) return;
    _speed = value;
    _controller.duration =
        new Duration(milliseconds: (_width * 1000 / _speed).ceil());
    _controller.forward();
  }

  /// 滚动文本之间的间隔
  double _gap;

  set gap(double value) {
    assert(value != null);
    if (value == _gap) return;
    _gap = value;
    markNeedsPaint();
  }

  TickerProvider get vsync => _vsync;
  TickerProvider _vsync;

  set vsync(TickerProvider value) {
    assert(value != null);
    if (value == _vsync) return;
    _vsync = value;
    _controller.resync(vsync);
  }

  TextSpan get text => _textPainter.text;

  /// 重新设置文本
  set text(TextSpan value) {
    assert(value != null);
    switch (_textPainter.text.compareTo(value)) {
      case RenderComparison.identical:
      case RenderComparison.metadata:
        return;
      case RenderComparison.paint:
        _textPainter.text = value;
        markNeedsPaint();
        markNeedsSemanticsUpdate();
        break;
      case RenderComparison.layout:
        _textPainter.text = value;
        _textPainter.layout();
        _width = _textPainter.size.width + _gap;
        _controller.duration =
            new Duration(milliseconds: (_width * 1000 / _speed).ceil());
        markNeedsLayout();
        break;
    }
  }

  Locale get locale => _textPainter.locale;

  set locale(Locale value) {
    if (_textPainter.locale == value) return;
    _textPainter.locale = value;
    markNeedsLayout();
  }

  double get textScaleFactor => _textPainter.textScaleFactor;

  set textScaleFactor(double value) {
    assert(value != null);
    if (_textPainter.textScaleFactor == value) return;
    _textPainter.textScaleFactor = value;
    _textPainter.layout();
    _width = _textPainter.size.width + _gap;
    _controller.duration =
        new Duration(milliseconds: (_width * 1000 / _speed).ceil());
    markNeedsLayout();
  }

  void _layoutText({double minWidth = 0.0, double maxWidth = double.infinity}) {
    _textPainter.layout(minWidth: minWidth, maxWidth: maxWidth);
  }

  void _layoutTextWithConstraints(BoxConstraints constraints) {
    _layoutText(minWidth: constraints.minWidth, maxWidth: constraints.maxWidth);
  }

  @override
  double computeMinIntrinsicWidth(double height) {
    _layoutText();
    return _textPainter.minIntrinsicWidth;
  }

  /// 视图的最大宽度
  @override
  double computeMaxIntrinsicWidth(double height) {
    _layoutText();
    return _textPainter.maxIntrinsicWidth;
  }

  double _computeIntrinsicHeight(double width) {
    _layoutText(minWidth: width, maxWidth: width);
    return _textPainter.height;
  }

  /// 视图的最小高度
  @override
  double computeMinIntrinsicHeight(double width) {
    return _computeIntrinsicHeight(width);
  }

  /// 视图的最大高度
  @override
  double computeMaxIntrinsicHeight(double width) {
    return _computeIntrinsicHeight(width);
  }

  @override
  double computeDistanceToActualBaseline(TextBaseline baseline) {
    assert(!debugNeedsLayout);
    assert(constraints != null);
    assert(constraints.debugAssertIsValid());
    _layoutTextWithConstraints(constraints);
    return _textPainter.computeDistanceToActualBaseline(baseline);
  }

  @override
  bool hitTestSelf(Offset position) => true;

  @override
  void handleEvent(PointerEvent event, BoxHitTestEntry entry) {
    assert(debugHandleEvent(event, entry));
    if (event is! PointerDownEvent) return;
    _layoutTextWithConstraints(constraints);
    final Offset offset = entry.localPosition;
    final TextPosition position = _textPainter.getPositionForOffset(offset);
    final TextSpan span = _textPainter.text.getSpanForPosition(position);
    span?.recognizer?.addPointer(event);
  }

  @override
  void performLayout() {
    _layoutTextWithConstraints(constraints);
    size = constraints.constrain(_textPainter.size);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    _layoutTextWithConstraints(new BoxConstraints());

    final Canvas canvas = context.canvas;
    canvas.save();
    canvas
        .clipRect(Rect.fromLTWH(offset.dx, offset.dy, size.width, size.height));

    double width = _textPainter.size.width + _gap;

    if (_textPainter.size.width >= size.width) {
      double scrollOffsetX = _animation.value * width;

      _textPainter.paint(
          canvas, offset.translate(offset.dx - scrollOffsetX, offset.dy));

      if (width - scrollOffsetX + _gap < size.width) {
        _textPainter.paint(
            canvas,
            new Offset(
              offset.dx + (width - scrollOffsetX),
              offset.dy,
            ));
      }
    } else {
      int count = (size.width / width).ceil();

      for (int i = 0; i < count + 1; i++) {
        _textPainter.paint(
            canvas,
            new Offset(
                offset.dx - _animation.value * width + width * i, offset.dy));
      }
    }
    canvas.restore();
  }
}
