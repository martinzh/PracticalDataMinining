using DataFrames

data_path = "$(homedir())/Code/CursoDatamining"

files = readdir(data_path)

data   = readtable(string(data_path,"/","tic_training.csv"))
fields = readtable(string(data_path,"/","fields.csv"))
