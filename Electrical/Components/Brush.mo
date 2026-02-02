within Modelica_Buch.Electrical.Components;

model Brush
  extends Modelica.Electrical.Analog.Interfaces.OnePort;
  //"current i from pin p to pin n"
  
  parameter Modelica.Units.SI.Current ILinear "Current limit of linear range";
  parameter Modelica.Units.SI.Voltage V  "Brush voltage limit, Betrag der Unter- und Obergrenze";
  
equation
  v = smooth(0,Functions.brush(i,ILinear,V))"input sequence is sequence of input statement in function brush";

annotation(
    Icon(
  graphics = {
    // Top blue rectangle (handle/connector)
    Rectangle(
      origin = {-1, -8},
      lineColor = {0, 0, 255},
      fillColor = {0, 0, 255},
      fillPattern = FillPattern.Solid,
      extent = {{-35, 16}, {35, -16}}
    ),
    // Main white body with blue border
    Ellipse(
      origin = {0, -56},
      lineColor = {0, 0, 255},
      fillColor = {255, 255, 255},
      fillPattern = FillPattern.Solid,
      extent = {{-48, 48}, {48, -48}}
    ),
    // Horizontal blue line
    Line(
      origin = {-70, 0},
      points = {{-19, 0}, {161, 0}},
      color = {0, 0, 255}
    ),
    // Name label
    Text(
      origin = {-2, 46},
      textColor = {0, 0, 255},
      extent = {{-30, 18}, {30, -18}},
      textString = "%name"
    )
  }
),
Documentation(info="<html>
<h4>Description</h4>

<p>This component models the behavior of an electric brush.</p>
</html>"));
end Brush;
