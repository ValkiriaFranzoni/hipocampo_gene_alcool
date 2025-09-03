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

# 5. Plotar curva --------------------------------------------
km_plot <- ggsurvplot(
  fit,
  data = dados,
  pval = TRUE,
  risk.table = TRUE,
  ggtheme = theme_minimal(),
  palette = c("white", "yellow"),
  title = "Curvas de Kaplan-Meier por Condição"
)

# Ajustar fundo azul e borda preta
km_plot$plot <- km_plot$plot +
  theme(
    plot.background = element_rect(fill = "navyblue", color = "black"),
    panel.background = element_rect(fill = "navyblue", color = "black"),
    panel.border = element_rect(color = "black", fill = NA, linewidth = 1),
    legend.background = element_rect(fill = "navyblue", color = NA),
    legend.key = element_rect(fill = "navyblue", color = "black"),
    text = element_text(color = "white"),
    axis.text = element_text(color = "white"),
    axis.title = element_text(color = "white"),
    plot.title = element_text(color = "white", face = "bold", hjust = 0.5)
  )


# 6. Salvar gráfico ------------------------------------------
if (!dir.exists("imagens")) dir.create("imagens")

# Salva só o gráfico principal
ggsave("imagens/kaplan_meier.png", km_plot$plot, width = 8, height = 6, dpi = 600)

# Se quiser salvar o layout completo (gráfico + tabela de risco):
ggsave("imagens/kaplan_meier_completo.png", print(km_plot), width = 8, height = 8, dpi = 600)



# ===========================================================
# Observação:
# Para rodar no terminal:
#   cd scripts_R
#   Rscript scripts_R_03_kaplan_meier.R
# ===========================================================
