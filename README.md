# Impacto do Álcool no Hipocampo

Este projeto analisa dados clínicos e de expressão gênica para investigar o impacto do consumo de álcool sobre o hipocampo.  
A análise inclui **processamento de dados clínicos**, **avaliação de expressão de genes inflamatórios** e **curvas de sobrevivência (Kaplan-Meier)**.

---

## Estrutura do Projeto

- `data/` → contém os dados brutos e tratados  
- `scripts_R/` → scripts organizados para cada etapa da análise  
- `imagens/` → gráficos gerados (boxplots, tendência de expressão e Kaplan-Meier)  
- `resultados/` → tabelas finais exportadas  
- `report.Rmd` → relatório em RMarkdown com todos os resultados  
- `README.md` → este arquivo  

---

## 🔬 Metodologia

1. **Pré-processamento dos dados clínicos**  
   - Conversão de valores de PMI  
   - Padronização de variáveis para análise de sobrevivência  

2. **Análise de expressão gênica**  
   - Boxplots comparando condições experimentais  
   - Tendência de expressão média dos genes  

3. **Análise de Sobrevivência**  
   - Curvas de Kaplan-Meier entre grupos (condições clínicas)  

4. **Identificação de alvos terapêuticos**  
   - Extração de potenciais genes associados  

---

## Resultados Principais

- Diferenças claras entre condições experimentais nos níveis de expressão gênica.  
- Identificação de padrões de tendência na resposta inflamatória.  
- Evidência de associação entre condição clínica e tempo de sobrevivência.  

---

## Visualizações

### Expressão de Genes Inflamatórios
![Boxplot da Expressão](imagens/boxplot_expressao.png)

### Tendência da Expressão Gênica
![Tendência da Expressão](imagens/linha_expressao.png)

### Curvas de Kaplan-Meier
![Kaplan-Meier](imagens/kaplan_meier.png)

---

## Execução

Para rodar o projeto localmente:

```bash
# Clonar o repositório
git clone https://github.com/ValkiriaFranzoni/hipocampo_gene_alcool.git
cd hipocampo_gene_alcool

# Executar todos os scripts
Rscript run_all.R


# Observações

O projeto é acadêmico e focado em análise exploratória.

Resultados podem ser expandidos para artigos e relatórios técnicos.


# Autoria

Projeto desenvolvido por Valkiria Franzoni dos Anjos da Costa, com foco em bioinformática, análise de dados clínicos e expressão gênica.

