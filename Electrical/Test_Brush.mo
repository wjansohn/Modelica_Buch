within Modelica_Buch.Electrical;

model Test_Brush
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Sources.RampCurrent rampCurrent(I = 2, duration = 1, offset = -1, startTime = 0)  annotation(
    Placement(transformation(origin = {-64, 14}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Components.Brush brush(ILinear = .1, V = 1)  annotation(
    Placement(transformation(origin = {50, 12}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-64, -58}, extent = {{-10, -10}, {10, 10}})));equation
  connect(rampCurrent.n, ground.p) annotation(
    Line(points = {{-64, 4}, {-64, -48}}, color = {0, 0, 255}));
  connect(rampCurrent.p, brush.p) annotation(
    Line(points = {{-64, 24}, {-64, 56}, {50, 56}, {50, 22}}, color = {0, 0, 255}));
  connect(brush.n, rampCurrent.n) annotation(
    Line(points = {{50, 2}, {50, -28}, {-64, -28}, {-64, 4}}, color = {0, 0, 255}));
annotation(
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.001));
end Test_Brush;
