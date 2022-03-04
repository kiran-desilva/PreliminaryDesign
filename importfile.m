function AVL1 = importfile1(filename, dataLines)
%IMPORTFILE1 Import data from a text file
%  AVL1 = IMPORTFILE1(FILENAME) reads data from text file FILENAME for
%  the default selection.  Returns the data as a table.
%
%  AVL1 = IMPORTFILE1(FILE, DATALINES) reads data for the specified row
%  interval(s) of text file FILENAME. Specify DATALINES as a positive
%  scalar integer or a N-by-2 array of positive scalar integers for
%  dis-contiguous row intervals.
%
%  Example:
%  AVL1 = importfile1("C:\Users\izzye\OneDrive\Documents\GitHub\AVD\PreliminaryAirframe\AVL Data Files\AVL_1.dat", [21, 84]);
%
%  See also READTABLE.
%
% Auto-generated by MATLAB on 01-Feb-2022 14:21:39

%% Input handling

% If dataLines is not specified, define defaults
if nargin < 2
    dataLines = [21, Inf];
end

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 64);

% Specify range and delimiter
opts.DataLines = dataLines;
opts.Delimiter = " ";

% Specify column names and types
opts.VariableNames = ["J", "A1", "A2", "Y_le", "var", "VarName6", "chord", "VarName8", "VarName9", "area", "VarName11", "VarName12", "c_cl", "VarName14", "VarName15", "ai", "VarName17", "VarName18", "cl_norm", "VarName20", "VarName21", "cl", "VarName23", "VarName24", "cd", "VarName26", "VarName27", "cdv", "VarName29", "cm_c_4", "VarName31", "cm_LE", "VarName33", "VarName34", "VarName35", "c_p_x_c", "Var37", "Var38", "Var39", "Var40", "Var41", "Var42", "Var43", "Var44", "Var45", "Var46", "Var47", "Var48", "Var49", "Var50", "Var51", "Var52", "Var53", "Var54", "Var55", "Var56", "Var57", "Var58", "Var59", "Var60", "Var61", "Var62", "Var63", "Var64"];
opts.SelectedVariableNames = ["J", "A1", "A2", "Y_le", "var", "VarName6", "chord", "VarName8", "VarName9", "area", "VarName11", "VarName12", "c_cl", "VarName14", "VarName15", "ai", "VarName17", "VarName18", "cl_norm", "VarName20", "VarName21", "cl", "VarName23", "VarName24", "cd", "VarName26", "VarName27", "cdv", "VarName29", "cm_c_4", "VarName31", "cm_LE", "VarName33", "VarName34", "VarName35", "c_p_x_c"];
opts.VariableTypes = ["double", "categorical", "categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string", "string"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.LeadingDelimitersRule = "ignore";

% Specify variable properties
opts = setvaropts(opts, ["Var37", "Var38", "Var39", "Var40", "Var41", "Var42", "Var43", "Var44", "Var45", "Var46", "Var47", "Var48", "Var49", "Var50", "Var51", "Var52", "Var53", "Var54", "Var55", "Var56", "Var57", "Var58", "Var59", "Var60", "Var61", "Var62", "Var63", "Var64"], "WhitespaceRule", "preserve");
opts = setvaropts(opts, ["A1", "A2", "Var37", "Var38", "Var39", "Var40", "Var41", "Var42", "Var43", "Var44", "Var45", "Var46", "Var47", "Var48", "Var49", "Var50", "Var51", "Var52", "Var53", "Var54", "Var55", "Var56", "Var57", "Var58", "Var59", "Var60", "Var61", "Var62", "Var63", "Var64"], "EmptyFieldRule", "auto");
opts = setvaropts(opts, ["J", "Y_le", "var", "VarName6", "chord", "VarName8", "VarName9", "area", "VarName11", "VarName12", "c_cl", "VarName14", "VarName15", "ai", "VarName17", "VarName18", "cl_norm", "VarName20", "VarName21", "cl", "VarName23", "VarName24", "cd", "VarName26", "VarName27", "cdv", "VarName29", "cm_c_4", "VarName31", "cm_LE", "VarName33", "VarName34", "VarName35", "c_p_x_c"], "FillValue", 0);
opts = setvaropts(opts, "J", "TrimNonNumeric", true);
opts = setvaropts(opts, "J", "ThousandsSeparator", ",");

% Import the data
AVL1 = readtable(filename, opts);

end