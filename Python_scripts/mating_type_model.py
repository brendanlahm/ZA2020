############ Machine learning script for predicting mating type
# Set working directory to folder containing the "ZA2020" repo
import os
os.chdir("C:/Users/bml99/Documents/R")
cwd = os.getcwd()

# Import data
import pandas as pd
isolates = pd.read_table("./ZA2020/data/36_isolates2.tab")
hosts = pd.read_table("./ZA2020/data/36_hosts2.tab")
locations = pd.read_table("./ZA2020/data/36_locations.tab")
years = pd.read_table("./ZA2020/data/36_years.tab")
mating_types = pd.read_table("./ZA2020/data/36_mating_types.tab")
df_list = [isolates, hosts, locations, years, mating_types]
df = pd.concat(df_list, axis=1)

#### Replace species name abbreviations
host_dict = {"A": "Agropyron sp.", "D": "Dactylis glomerata", "L": "Lolium sp."}
df = df.replace({"Host": host_dict})
print(df)

#### Formatting the data
import pandas
hosts2 = pandas.get_dummies(df[['Host']])
print(hosts2.to_string())

years2 = years.astype(str)
years2 = pandas.get_dummies(years2[['Year']])
print(years2.to_string())

mating_types2 = mating_types.astype(str)
mating_types2 = pandas.get_dummies(mating_types2[['Mating Type']])
print(mating_types2.to_string())

x = pandas.concat([hosts2, years2], axis=1)
y = mating_types2

### MODULE REQUIRED -> Install w/ pip
from sklearn import linear_model
regr = linear_model.LinearRegression()
regr.fit(x,y)

predicted_mating_type = regr.predict([[1,0,0,0,1,0]])
print(predicted_mating_type)

z = predicted_mating_type[0,1]*100
print("Probability of being Mating Type 2: " + z.astype(str)[0:2] + "%")



