within Modelica_Buch.Electrical;

model Test_ComponentRL_Series
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 10, startTime = 0.2)  annotation(
    Placement(transformation(origin = {-82, 20}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-82, -54}, extent = {{-10, -10}, {10, 10}})));
  Components.RL_Series rL_Series(R = 10, L = 2, i(start = 0))  annotation(
    Placement(transformation(origin = {-30, 48}, extent = {{-12, -2}, {12, 2}})));
equation
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-82, 10}, {-82, -44}}, color = {0, 0, 255}));
  connect(stepVoltage.p, rL_Series.p) annotation(
    Line(points = {{-82, 30}, {-82, 48}, {-40, 48}}, color = {0, 0, 255}));
  connect(rL_Series.n, stepVoltage.n) annotation(
    Line(points = {{-20, 48}, {34, 48}, {34, -4}, {-81, -4}, {-81, 10}, {-82, 10}}, color = {0, 0, 255}));

annotation(
    Diagram,
  experiment(StartTime = 0, StopTime = 4, Tolerance = 1e-06, Interval = 0.002));
end Test_ComponentRL_Series;
