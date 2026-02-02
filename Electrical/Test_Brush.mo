within Modelica_Buch.Electrical;

model Test_Brush
  extends Modelica.Icons.Example;
  extends Modelica.Electrical.Analog.Interfaces.OnePort;
  //"current i from pin p to pin n"
  
  parameter Modelica.Units.SI.Current ILinear "Current limit of linear range";
  parameter Modelica.Units.SI.Voltage V  "Brush voltage limit, Betrag der Unter- und Obergrenze";
  
equation
  //v = smooth(0,
end Test_Brush;
