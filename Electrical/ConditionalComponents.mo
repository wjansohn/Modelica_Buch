within Modelica_Buch.Electrical;

model ConditionalComponents
  extends Modelica.Icons.Example;
  
  parameter Modelica.Units.SI.Voltage v=10 "DC voltage";
  parameter Modelica.Units.SI.Resistance R=10 "Resistance";
  parameter Modelica.Units.SI.Inductance L=2 "Inductance";
  parameter Boolean useInductor = true "for booleanStep, triggers switch";
  
  
  Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage(V = v)  annotation(
    Placement(transformation(origin = {-68, -6}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = R)  annotation(
    Placement(transformation(origin = {6, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = L) if useInductor annotation(
    Placement(transformation(origin = {64, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-68, -66}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.IdealClosingSwitch switch annotation(
    Placement(transformation(origin = {-38, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Ideal.Short short if not useInductor annotation(
    Placement(transformation(origin = {64, 46}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanStep booleanStep(startTime = .2)  annotation(
    Placement(transformation(origin = {-74, 70}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(booleanStep.y, switch.control) annotation(
    Line(points = {{-62, 70}, {-38, 70}, {-38, 42}}, color = {255, 0, 255}));
  connect(switch.n, resistor.p) annotation(
    Line(points = {{-28, 30}, {-4, 30}}, color = {0, 0, 255}));
  connect(resistor.n, short.p) annotation(
    Line(points = {{16, 30}, {34, 30}, {34, 46}, {54, 46}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.p) annotation(
    Line(points = {{16, 30}, {34, 30}, {34, 4}, {54, 4}}, color = {0, 0, 255}));
  connect(constantVoltage.p, switch.p) annotation(
    Line(points = {{-68, 4}, {-68, 30}, {-48, 30}}, color = {0, 0, 255}));
  connect(ground.p, constantVoltage.n) annotation(
    Line(points = {{-68, -56}, {-68, -16}}, color = {0, 0, 255}));
  connect(constantVoltage.n, inductor.n) annotation(
    Line(points = {{-68, -16}, {-68, -32}, {116, -32}, {116, 30}, {90, 30}, {90, 4}, {74, 4}}, color = {0, 0, 255}));
  connect(constantVoltage.n, short.n) annotation(
    Line(points = {{-68, -16}, {-68, -32}, {116, -32}, {116, 30}, {90, 30}, {90, 46}, {74, 46}}, color = {0, 0, 255}));
end ConditionalComponents;
