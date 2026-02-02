within Modelica_Buch.Electrical.Components;

model RL_Series
  extends Modelica.Electrical.Analog.Interfaces.TwoPin;
  
  parameter Real R(start=1) "Resistance";
  parameter Real L(start=1) "Inductance";
  
  Modelica.Units.SI.Current i(start=0)=p.i "Current";
  
  Modelica.Electrical.Analog.Basic.Resistor resistor(final R = R)  annotation(
    Placement(transformation(origin = {-52, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(final L = L)  annotation(
    Placement(transformation(origin = {22, 0}, extent = {{-10, -10}, {10, 10}})));

equation
  connect(n, inductor.n) annotation(
    Line(points = {{100, 0}, {32, 0}}, color = {0, 0, 255}));
  connect(inductor.p, resistor.n) annotation(
    Line(points = {{12, 0}, {-42, 0}}, color = {0, 0, 255}));
  connect(resistor.p, p) annotation(
    Line(points = {{-62, 0}, {-100, 0}}, color = {0, 0, 255}));
annotation(
    Icon(graphics = {Line(origin = {25.95, 9}, points = {{-10, -9}, {-8.5, 0}, {3, 8}, {14.5, 0}, {16, -9}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(origin = {51.95, 9}, points = {{-10, -9}, {-8.5, 0}, {3, 8}, {14.5, 0}, {16, -9}}, color = {0, 0, 255}, smooth = Smooth.Bezier), Line(origin = {4, 0}, points = {{12, 0}, {-12, 0}, {-12, 0}}, color = {0, 0, 255}), Line(origin = {79, 0}, points = {{-11, 0}, {11, 0}, {11, 0}}, color = {0, 0, 255}), Line(origin = {-78, 0}, points = {{-12, 0}, {12, 0}}, color = {0, 0, 255}), Rectangle(origin = {-37, -1}, lineColor = {0, 0, 255}, extent = {{-29, 15}, {29, -15}}), Text(origin = {3, 32}, textColor = {0, 0, 255}, extent = {{-53, 0}, {53, 30}}, textString = "%name"), Text(origin = {0, -37}, extent = {{-16, 9}, {16, -9}}, textString = "R=%R"), Text(origin = {0, -53}, extent = {{-16, 9}, {16, -9}}, textString = "L=%L")}, coordinateSystem(extent = {{-120, 20}, {120, -20}})),
  Diagram(graphics));
end RL_Series;
