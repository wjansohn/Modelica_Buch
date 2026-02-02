within Modelica_Buch.Electrical;

model Test_ComponentRL_SeriesRecord
  extends Modelica_Buch.Electrical.Test_ComponentRL_Series(rL_Series(final R = rLData.R, final L = rLData.L), stepVoltage(V = 10, startTime = .2));
  parameter Records.RL_DataElectrical5 rLData annotation(
    Placement(transformation(origin = {-28, 72}, extent = {{-16, -15}, {16, 15}})));
equation

end Test_ComponentRL_SeriesRecord;
