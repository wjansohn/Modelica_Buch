within Modelica_Buch.Electrical.Records;

record RL_Data
  extends Modelica.Icons.Record;
  
  parameter Modelica.Units.SI.Resistance R(start=1) "Resistance";
  parameter Modelica.Units.SI.Inductance L(start=1) "Inductance";
  parameter String componentName = "RL_Data""Component name";
  annotation(
    Icon(graphics = {Text(origin = {14, -123}, extent = {{4, -1}, {-4, 1}}, textString = "%componentName"), Text(origin = {1, -120}, textColor = {0, 0, 255}, extent = {{-99, 74}, {99, -74}}, textString = "%componentName")}, coordinateSystem(extent = {{-160, 100}, {160, -200}})));
  
end RL_Data;
