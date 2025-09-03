# Impacto do Álcool no Hipocampo 

Este é um projeto **pessoal** de ciência de dados aplicada à biomedicina.  
Meu objetivo aqui é explorar, de forma prática, como o consumo de álcool pode impactar o **hipocampo** através da **expressão de genes ligados à inflamação**.

O projeto funciona como um **portfólio**, unindo programação em R, análise de dados, estatística e visualização científica.  
Para quem quiser os **detalhes completos da análise**, eles estão organizados no relatório [report.Rmd](report.Rmd).

---


👩‍💻 Autora
Valkiria Franzoni dos Anjos da Costa
📧 Email: valkiriafranzoni@gmail.com
🔗 LinkedIn: linkedin.com/in/valkiria-franzoni


## Objetivo

- Exercitar o uso de **R** em análises biológicas.  
- Investigar genes inflamatórios (ex.: **IL1B, IL6, TNF-α**) associados à resposta inflamatória no hipocampo.  
- Explorar como mudanças nesses genes podem estar relacionadas a efeitos do consumo de álcool.  
- Demonstrar **boas práticas em ciência de dados**: dados crus, scripts reprodutíveis e documentação.

---


## Estrutura do Projeto

hipocampo_gene_alcool/
│── data/ # dados brutos e tratados
│── scripts_R/ # scripts organizados para cada etapa da análise
│── imagens/ # gráficos gerados (boxplots, curvas de Kaplan-Meier etc.)
│── resultados/ # tabelas finais exportadas
│── report.Rmd # relatório completo em RMarkdown
│── run_all.R # script para executar toda a pipeline
│── README.md # este arquivo



---

## 🔬 Metodologia (resumida)

1. **Pré-processamento**  
   - Limpeza e organização dos dados.  
   - Normalização das expressões gênicas.  

2. **Análise exploratória**  
   - Distribuição de expressão dos genes inflamatórios.  
   - Visualizações: boxplots, heatmaps.  

3. **Modelagem de sobrevivência (Kaplan-Meier)**  
   - Comparação de grupos com alta vs. baixa expressão.  

4. **Discussão inicial**  
   - Identificação de possíveis vias inflamatórias envolvidas.  
   - Interpretação como exercício de portfólio, não como resultado acadêmico.  

---


## Genes e fases inflamatórias

Neste projeto, foram avaliados três genes centrais na resposta inflamatória:

- **IL1B** → fase de **exposição ao álcool**, funcionando como gatilho inicial da inflamação.  
- **IL6** → fase de **propagação da inflamação**, aumenta após o processo inflamatório agudo.  
- **TNF-α** → fase de **manutenção crônica / neurodegenerativa**, sustentando a inflamação no longo prazo.  


## Inflamação na abstinência
Durante a **abstinência do álcool**, observou-se uma queda na expressão de **IL6**, sugerindo uma tentativa inicial de recuperação do sistema nervoso.  
No entanto, essa redução não foi sustentada: após a fase de abstinência, a expressão voltou a subir, indicando um possível **efeito rebote inflamatório**.  
Esse padrão sugere que mesmo sem o consumo contínuo, o cérebro mantém sinais inflamatórios residuais.


##  Como usar

Clone o repositório e rode os scripts em R:

```bash
git clone https://github.com/ValkiriaFranzoni/hipocampo_gene_alcool.git
cd hipocampo_gene_alcool
Rscript run_all.R


# Observações

O projeto é acadêmico e focado em análise exploratória.

Resultados podem ser expandidos para artigos e relatórios técnicos.


## 📚 Referências

- Flatscher-Bader T, van der Brug M, Landis N, Wilce PA. Stress-response pathways are altered in the hippocampus of chronic alcoholics. *Alcohol*. 2013;47(6):505-515. doi:10.1016/j.alcohol.2013.08.002  
  PubMed: https://pubmed.ncbi.nlm.nih.gov/23981442/  
  PMC (suplementos .xlsx): https://pmc.ncbi.nlm.nih.gov/articles/PMC3836826/
