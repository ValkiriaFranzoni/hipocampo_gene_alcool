# Impacto do Álcool no Hipocampo – Bioinformática  

Este repositório reúne as análises que desenvolvi para entender como o **consumo crônico de álcool** afeta a expressão de genes inflamatórios no **hipocampo** e como esses efeitos se conectam a processos de **neuroinflamação** e **resiliência neural**.  

Durante o projeto, trabalhei tanto com dados clínicos quanto com dados de expressão gênica, e procurei integrar resultados em gráficos, tabelas e interpretações biológicas. A ideia é que este estudo sirva de **alerta científico** e também como material de **portfólio profissional**.  

---

## Objetivos

- Avaliar os genes inflamatórios **IL6, TNF e IL1B** em três condições:
  - **Pré-inflamação**  
  - **Abstinência**  
  - **Pós-inflamação**
- Construir curvas de sobrevivência (**Kaplan-Meier**) a partir dos dados clínicos  
- Identificar **alvos terapêuticos** e discutir possíveis implicações  

---

## Estrutura do Projeto

Projeto_Alcool_Hipocampo/
│
├── data/ # Dados brutos e processados
│ ├── raw/ # Arquivos originais (.xlsx, suplementos NIHMS)
│ └── processed/ # Arquivos prontos para análise (.csv)
│
├── scripts_R/ # Scripts em R para cada etapa da análise
│ ├── 00_packages.R
│ ├── 01_prepare_expression.R
│ ├── 02_expression_plots.R
│ ├── 03_kaplan_meier.R
│ └── 04_alvos_terapeuticos.R
│
├── imagens/ # Gráficos gerados (boxplot, linha, Kaplan-Meier)
│
├── resultados/ # Saídas em tabela (estatísticas e alvos)
│
├── report.Rmd # Relatório completo em RMarkdown
├── run_all.R # Script para rodar todas as etapas em sequência
├── .gitignore
└── hipocampo_gene_alcool.Rproj



---

## Como Rodar

### 1. Abrir o projeto
Abra o arquivo `hipocampo_gene_alcool.Rproj` no **RStudio**. Isso garante que todos os caminhos relativos funcionem corretamente.  

### 2. Instalar pacotes
Antes de rodar os scripts, instale os pacotes necessários (uma única vez):  

```r
install.packages(c("tidyverse", "ggplot2", "survival", "survminer", "readr"))


### 3. Rodar scripts manualmente

Cada script no diretório scripts_R/ pode ser executado separadamente:

source("scripts_R/01_prepare_expression.R")
source("scripts_R/02_expression_plots.R")
source("scripts_R/03_kaplan_meier.R")
source("scripts_R/04_alvos_terapeuticos.R")

### 4. Rodar tudo de uma vez

Se preferir, use o run_all.R para executar todas as etapas em sequência


### Resultados Esperados

Boxplot mostrando a variação de expressão gênica (IL6, TNF, IL1B)

Gráfico de linha mostrando a tendência da expressão nas condições

Curvas de Kaplan-Meier para análise de sobrevivência

Tabela de alvos terapêuticos potenciais

Os gráficos ficam salvos em /imagens e as tabelas em /resultados



### Reflexão Pessoal

Esse projeto me ajudou a unir duas paixões: a ciência e a bioinformática.
Durante o processo, precisei lidar com desafios de organização de dados, ajuste de scripts e geração de relatórios automatizados.
Mais do que resultados numéricos, o que fica aqui é o aprendizado prático e a satisfação de transformar dados em conhecimento útil.

Autoria: Valkiria Franzoni dos Anjos da Costa
Projeto desenvolvido em RStudio, 2025

