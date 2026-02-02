within Modelica_Buch.Electrical;

model TablesFromFile
  extends Modelica_Buch.Electrical.W_Tables(combiTimeTable(tableOnFile = true, fileName = "C:/Users/Wolfgang/Documents/git/Modelica_Buch/Resources/Tables/table.txt", tableName = "resistor"));
equation

annotation(
    experiment(StartTime = 0, StopTime = 4, Tolerance = 1e-06, Interval = 0.002));
end TablesFromFile;
