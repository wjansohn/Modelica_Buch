within Modelica_Buch.Electrical;

model W_Tables
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage annotation(
    Placement(transformation(origin = {-64, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Inductor inductor annotation(
    Placement(transformation(origin = {-24, 36}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.VariableResistor resistor annotation(
    Placement(transformation(origin = {30, 8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-64, -60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(tableOnFile = true, tableName = "resistor", fileName = "C:/Users/Wolfgang/Documents/git/Modelica_Buch/Resources/Tables/table.txt")  annotation(
    Placement(transformation(origin = {102, 8}, extent = {{10, -10}, {-10, 10}})));
equation
  connect(ground.p, constantVoltage.n) annotation(
    Line(points = {{-64, -50}, {-64, 0}}, color = {0, 0, 255}));
  connect(constantVoltage.p, inductor.p) annotation(
    Line(points = {{-64, 20}, {-64, 36}, {-34, 36}}, color = {0, 0, 255}));
  connect(inductor.n, resistor.p) annotation(
    Line(points = {{-14, 36}, {30, 36}, {30, 18}}, color = {0, 0, 255}));
  connect(resistor.n, constantVoltage.n) annotation(
    Line(points = {{30, -2}, {30, -18}, {-64, -18}, {-64, 0}}, color = {0, 0, 255}));
  connect(combiTimeTable.y[1], resistor.R) annotation(
    Line(points = {{91, 8}, {42, 8}}, color = {0, 0, 127}));
annotation(
    experiment(StartTime = 0, StopTime = 4, Tolerance = 1e-06, Interval = 0.002));
end W_Tables;
