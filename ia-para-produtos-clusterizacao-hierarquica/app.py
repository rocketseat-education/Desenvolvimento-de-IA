import streamlit as st
import pandas as pd

# Carregar Dados e colocar no Cache do Streamlit
@st.cache_data
def carregar_dados():
    return pd.read_csv('./datasets/clusterizacao_laptops.csv')

df = carregar_dados()

# Sidebar para Filtro
st.sidebar.header("Filtros")

# Selecionar modelos
model = st.sidebar.selectbox('Selecionar Modelo', df['model'].unique())

# Filtrar modelo
df_laptops_modelo = df[df['model'] == model]

# Filtrar cluster do model escolhido
df_laptops_final = df[df['cluster'] == df_laptops_modelo.iloc[0]['cluster']]

# Visualizar modelos
st.write("Recomendações de Modelos")
st.table(df_laptops_final)