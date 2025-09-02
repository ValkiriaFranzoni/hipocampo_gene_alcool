# ===========================================================
# Projeto: Impacto do Álcool no Hipocampo
# Etapa: Preparação dos dados clínicos e Kaplan-Meier
# Linguagem: R
# Pacotes: survival, survminer, readxl, dplyr, readr
# Execução: source("scripts_R/scripts_R_01_prepare_expression.R")
# ===========================================================

# Carregar pacotes necessários
library(survival)
library(survminer)
library(readxl)
library(dplyr)
library(readr)

# ------------------------------- #
# 1) Ler planilha original (suplemento NIHMS)
# ------------------------------- #
# O arquivo está em data/raw/
# skip = 1 porque a primeira linha contém apenas título geral
dados <- read_excel(
  "data/raw/NIHMS512449-supplement-01.xlsx",
  sheet = 1,
  skip = 1
)

cat("\nColunas detectadas no Excel:\n")
print(names(dados)[1:min(length(names(dados)), 20)])

cat("\nPrévia dos dados brutos:\n")
print(utils::head(dados, 5))

# ------------------------------- #
# 2) Função auxiliar: converter PMI
# ------------------------------- #
# PMI pode aparecer como número único ("22") ou intervalo ("48-69").
# Para os intervalos, usamos o ponto médio da faixa.
to_numeric_pmi <- function(x) {
  x_chr <- as.character(x)
  num  <- suppressWarnings(as.numeric(x_chr))
  is_range <- grepl("-", x_chr)
  if (any(is_range, na.rm = TRUE)) {
    parts <- strsplit(gsub("\\s", "", x_chr[is_range]), "-")
    mids  <- sapply(parts, function(v) mean(as.numeric(v), na.rm = TRUE))
    num[is_range] <- mids
  }
  return(num)
}

# ------------------------------- #
# 3) Padronizar colunas de interesse
# ------------------------------- #
# - Tempo    := PMI convertido para número
# - Status   := 1 se há "Clinical Cause of Death", 0 se vazio
# - Condicao := Classification (Alcoholic / Control)
col_status_ok <- "Clinical Cause of Death" %in% names(dados)
col_pmi_ok    <- "PMI" %in% names(dados)
col_class_ok  <- "Classification" %in% names(dados)

if (!all(col_status_ok, col_pmi_ok, col_class_ok)) {
  stop("Colunas esperadas não foram encontradas. Verifique se existem: 'PMI', 'Clinical Cause of Death', 'Classification'.")
}

dados_tratados <- dados %>%
  mutate(
    PacienteID = dplyr::row_number(),
    Tempo      = to_numeric_pmi(`PMI`),
    Status     = ifelse(is.na(`Clinical Cause of Death`) | `Clinical Cause of Death` == "", 0, 1),
    Condicao   = `Classification`
  ) %>%
  dplyr::select(PacienteID, Tempo, Status, Condicao)

cat("\nPrévia dos dados tratados (para Kaplan-Meier):\n")
print(utils::head(dados_tratados, 10))

# Remover registros sem Tempo ou Condicao
dados_tratados <- dplyr::filter(dados_tratados, !is.na(Tempo), !is.na(Condicao))

# Checagens de consistência
if (!is.numeric(dados_tratados$Tempo)) stop("Erro: Tempo não é numérico após o tratamento de PMI.")
if (!all(dados_tratados$Status %in% c(0,1))) stop("Erro: Status precisa ser 0/1.")

# ------------------------------- #
# 4) Salvar versão tratada para reuso
# ------------------------------- #
if (!dir.exists("data/processed")) dir.create("data/processed", recursive = TRUE)
readr::write_csv(dados_tratados, "data/processed/clinicos.csv")
cat("\nArquivo tratado salvo em: data/processed/clinicos.csv\n")

# ------------------------------- #
# 5) Kaplan-Meier
# ------------------------------- #
surv_obj <- Surv(time = dados_tratados$Tempo, event = dados_tratados$Status)
fit <- survfit(surv_obj ~ Condicao, data = dados_tratados)

km_plot <- ggsurvplot(
  fit,
  data = dados_tratados,
  pval = TRUE,
  risk.table = TRUE,
  ggtheme = theme_minimal(),
  title = "Curvas de Kaplan-Meier por Condição"
)

# ------------------------------- #
# 6) Salvar gráfico
# ------------------------------- #
if (!dir.exists("imagens")) dir.create("imagens", recursive = TRUE)
ggsave("imagens/kaplan_meier.png", km_plot$plot, width = 8, height = 6)
cat("\nGráfico salvo em: imagens/kaplan_meier.png\n")

# ------------------------------- #
# Referência (comandos de terminal; não rodar no R)
#   cd scripts_R
#   Rscript scripts_R_03_kaplan_meier.R
# ------------------------------- #
