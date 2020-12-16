import yaml
import pandas as pd

with open("_data_investments/2016investments.yaml") as f:
    data = yaml.safe_load(f)

df = pd.DataFrame(data)

print(df)