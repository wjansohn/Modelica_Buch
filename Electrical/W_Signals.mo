within Modelica_Buch.Electrical;

model W_Signals
  extends Modelica.Icons.Example;
  parameter Modelica.Units.SI.Resistance R=10 "Resistance";
  parameter Modelica.Units.SI.Inductance L=2 "Inductance";
  parameter Modelica.Units.SI.Current IRef=0.25 "Reference current";
  
  
  Modelica.Electrical.Analog.Basic.Resistor resistor(R = R)  annotation(
    Placement(transformation(origin = {44, 54}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = L)  annotation(
    Placement(transformation(origin = {90, 54}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage annotation(
    Placement(transformation(origin = {14, 26}, extent = {{-10, 10}, {10, -10}}, rotation = -90)));
  Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor annotation(
    Placement(transformation(origin = {70, -2}, extent = {{10, -10}, {-10, 10}}, rotation = -0)));
  Modelica.Blocks.Sources.Step step(startTime = 1, height = IRef)  annotation(
    Placement(transformation(origin = {-132, 26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Feedback feedback annotation(
    Placement(transformation(origin = {-78, 26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Continuous.Integrator integrator(k = 100)  annotation(
    Placement(transformation(origin = {-30, 26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {14, -28}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(step.y, feedback.u1) annotation(
    Line(points = {{-121, 26}, {-86, 26}}, color = {0, 0, 127}));
  connect(feedback.y, integrator.u) annotation(
    Line(points = {{-68, 26}, {-42, 26}}, color = {0, 0, 127}));
  connect(signalVoltage.v, integrator.y) annotation(
    Line(points = {{2, 26}, {-18, 26}}, color = {0, 0, 127}));
  connect(ground.p, signalVoltage.n) annotation(
    Line(points = {{14, -18}, {14, 16}}, color = {0, 0, 255}));
  connect(signalVoltage.p, resistor.p) annotation(
    Line(points = {{14, 36}, {14, 54}, {34, 54}}, color = {0, 0, 255}));
  connect(resistor.n, inductor.p) annotation(
    Line(points = {{54, 54}, {80, 54}}, color = {0, 0, 255}));
  connect(currentSensor.i, feedback.u2) annotation(
    Line(points = {{70, -13}, {70, -42}, {-78, -42}, {-78, 18}}, color = {0, 0, 127}));
  connect(currentSensor.n, signalVoltage.n) annotation(
    Line(points = {{60, -2}, {14, -2}, {14, 16}}, color = {0, 0, 255}));
  connect(inductor.n, currentSensor.p) annotation(
    Line(points = {{100, 54}, {112, 54}, {112, -2}, {80, -2}}, color = {0, 0, 255}));


annotation(
    experiment(StartTime = 0, StopTime = 3, Tolerance = 1e-06, Interval = 0.001),
  Documentation(info = "<html>
<h4>Description</h4>

<p>This examples shows how the current in an electric circuit can be controlled using 
a sensor, a controller and a voltage source with signal input.</p>

<h4>Plot the following variable(s)</h4>

<ul>
<li><code>currentSensor.i</code>: current of cirucit</li>
</ul>
</html>"),
  Diagram(coordinateSystem(extent = {{-160, 60}, {120, -40}})));


end W_Signals;
