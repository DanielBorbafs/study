import pandas as pd 
import numpy as np 
from datetime import datetime, timedelta

# Configuração do template de dados
np.random.seed(42)
n_rows = 1000
platforms = ['Mobile', 'Web', 'Tablet']
countries = ['BR', 'US', 'UK', 'DE', 'FR', 'JP', 'CA']

# GERANDO OS DADOS
start_date = datetime(2024, 1, 1)
dates = [start_date + timedelta(days=x) for x in range(n_rows)]

# Criação do DataFrame
data = {
    "client_id": np.random.randint(1000, 9999, size=n_rows),
    "date": [d.strftime('%Y-%m-%d') for d in dates],
    "sessions": np.random.randint(50, 5000, size=n_rows),
    "active_users": np.random.randint(10, 2500, size=n_rows),
    "revenue": np.round(np.random.uniform(10, 5000, size=n_rows), 2),
    "platform_type": np.random.choice(platforms, size=n_rows),
    "country": np.random.choice(countries, size=n_rows),
    "bounce_rate": np.round(np.random.uniform(10, 80, size=n_rows), 1),
    "page_views": np.random.randint(1, 150, size=n_rows)
}

df = pd.DataFrame(data)

df.to_csv('clients_data.csv', index=False)