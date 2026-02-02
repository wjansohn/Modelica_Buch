within Modelica_Buch.Electrical.Records;

record RL_DataElectrical5
  extends Electrical.Records.RL_Data(final R = 15, final L = 1.5, final componentName = "RL_DataElectrical1");
  annotation(
    defaultComponentName = "rLData",
    defaultComponentPrefixes = "parameter");
  
end RL_DataElectrical5;
