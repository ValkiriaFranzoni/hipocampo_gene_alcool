# ===========================================================
# Projeto: Impacto do Álcool no Hipocampo
# Etapa: Pacotes necessários
# Linguagem: R
# Execução: source("scripts_R/00_packages.R")
# ===========================================================

# Lista de pacotes utilizados no projeto
pacotes <- c(
  "ggplot2",
  "tidyverse",
  "readr",
  "readxl",
  "dplyr",
  "survival",
  "survminer"
)

# Função para instalar automaticamente se não estiver disponível
instalar <- function(p) {
  if (!require(p, character.only = TRUE)) {
    install.packages(p)
    library(p, character.only = TRUE)
  }
}

cat("\nVerificando pacotes necessários...\n")
invisible(lapply(pacotes, instalar))
cat("Todos os pacotes foram carregados com sucesso.\n")

# ===========================================================
# Observação:
# Este script deve ser executado primeiro.
# ===========================================================
