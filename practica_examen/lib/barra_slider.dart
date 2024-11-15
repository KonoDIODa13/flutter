import "package:flutter/material.dart";

class BarraSlider extends StatefulWidget {
  double valor;
  Function(double) onchanged;
  double max;
  double min;
  BarraSlider(
      {super.key,
      required this.valor,
      required this.onchanged,
      required this.max,
      required this.min});

  @override
  _BarraSliderState createState() => _BarraSliderState();
}

class _BarraSliderState extends State<BarraSlider> {
  @override
  Widget build(BuildContext context) {
    return Slider(
        value: widget.valor,
        max: widget.max,
        min: widget.min,
        onChanged: widget.onchanged);
  }
}
