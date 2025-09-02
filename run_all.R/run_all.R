# ===========================================================
# Projeto: Impacto do Álcool no Hipocampo
# Etapa: Execução de todos os scripts
# Linguagem: R
# Execução: source("run_all.R")
# ===========================================================

cat("\nIniciando execução completa do projeto...\n")

# 1) Carregar pacotes
source("scripts_R/00_packages.R")

# 2) Preparar dados clínicos e Kaplan-Meier
cat("\nRodando etapa 01 (prepare_expression)...\n")
source("scripts_R/scripts_R_01_prepare_expression.R")

# 3) Gráficos de expressão
cat("\nRodando etapa 02 (expression_plots)...\n")
source("scripts_R/scripts_R_02_expression_plots.R")

# 4) Curvas de Kaplan-Meier
cat("\nRodando etapa 03 (kaplan_meier)...\n")
source("scripts_R/scripts_R_03_kaplan_meier.R")

# 5) Alvos terapêuticos
cat("\nRodando etapa 04 (alvos_terapeuticos)...\n")
source("scripts_R/scripts_R_04_alvos_terapeuticos.R")

cat("\nPipeline concluído. Resultados disponíveis em /imagens e /resultados.\n")

# ===========================================================
# Observação:
# Este script executa todos os demais em sequência.
# Se quiser rodar manualmente, execute cada arquivo da pasta scripts_R.
# ===========================================================

