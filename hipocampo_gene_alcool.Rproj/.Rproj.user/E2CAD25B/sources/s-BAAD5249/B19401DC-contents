# ===========================================================
# Projeto: Impacto do Álcool no Hipocampo
# Etapa: Kaplan-Meier (sobrevivência)
# Linguagem: R
# Pacotes: survival, survminer, readr
# Execução: source("scripts_R/scripts_R_03_kaplan_meier.R")
# ===========================================================

# Carregar bibliotecas necessárias
library(survival)
library(survminer)
library(readr)

# ------------------------------- #
# 1) Definir caminho dos dados clínicos
# ------------------------------- #
clin_path <- "data/processed/clinicos.csv"
if (!file.exists(clin_path)) {
  stop("O arquivo clinicos.csv não foi encontrado em data/processed/.")
}

# ------------------------------- #
# 2) Ler dados
# ------------------------------- #
dados <- read_csv(clin_path, show_col_types = FALSE)

cat("\nPrévia dos dados clínicos carregados:\n")
print(head(dados, 10))

# Conferir se colunas essenciais estão presentes
colunas_ok <- c("Tempo", "Status", "Condicao")
if (!all(colunas_ok %in% colnames(dados))) {
  stop("As colunas necessárias (Tempo, Status, Condicao) não foram encontradas no arquivo.")
}

# ------------------------------- #
# 3) Criar objeto de sobrevivência
# ------------------------------- #
# Tempo = tempo até evento
# Status = 1 (evento/óbito), 0 (censurado)
surv_obj <- Surv(time = dados$Tempo, event = dados$Status)

# ------------------------------- #
# 4) Ajustar modelo Kaplan-Meier por condição
# ------------------------------- #
fit <- survfit(surv_obj ~ Condicao, data = dados)

# ------------------------------- #
# 5) Plotar curva Kaplan-Meier
# ------------------------------- #
km_plot <- ggsurvplot(
  fit,
  data = dados,
  pval = TRUE,
  risk.table = TRUE,
  ggtheme = theme_minimal(),
  title = "Curvas de Kaplan-Meier por Condição"
)

# ------------------------------- #
# 6) Salvar gráfico
# ------------------------------- #
if (!dir.exists("imagens")) dir.create("imagens", recursive = TRUE)
ggsave("imagens/kaplan_meier.png", km_plot$plot, width = 8, height = 6, dpi = 300)

cat("\nKaplan-Meier finalizado. O gráfico foi salvo em: imagens/kaplan_meier.png\n")

# ===========================================================
# Observação:
# Para rodar no terminal:
#   cd scripts_R
#   Rscript scripts_R_03_kaplan_meier.R
# ===========================================================
