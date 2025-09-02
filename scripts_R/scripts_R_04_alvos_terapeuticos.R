# ===========================================================
# Projeto: Impacto do Álcool no Hipocampo
# Etapa: Alvos Terapêuticos
# Linguagem: R
# Pacotes: readr
# Execução: source("scripts_R/scripts_R_04_alvos_terapeuticos.R")
# ===========================================================

library(readr)

# ------------------------------- #
# 1) Definir caminho dos dados de alvos
# ------------------------------- #
alvos_path <- "data/processed/alvos_terapeuticos.csv"
if (!file.exists(alvos_path)) {
  stop("O arquivo alvos_terapeuticos.csv não foi encontrado em data/processed/.")
}

# ------------------------------- #
# 2) Ler tabela de alvos terapêuticos
# ------------------------------- #
alvos <- read_csv(alvos_path, show_col_types = FALSE)

cat("\nPrévia dos alvos terapêuticos carregados:\n")
print(head(alvos, 10))

# ------------------------------- #
# 3) Exportar cópia para a pasta resultados
# ------------------------------- #
if (!dir.exists("resultados")) dir.create("resultados", recursive = TRUE)
write_csv(alvos, "resultados/alvos_terapeuticos.csv")

cat("\nTabela exportada em: resultados/alvos_terapeuticos.csv\n")

# ------------------------------- #
# 4) Se houver versão em Markdown, informar
# ------------------------------- #
if (file.exists("resultados/alvos_terapeuticos.md")) {
  cat("Versão em Markdown de alvos terapêuticos já está disponível em /resultados.\n")
}

# ------------------------------- #
# 5) Mensagem final
# ------------------------------- #
cat("Script de alvos terapêuticos concluído com sucesso.\n")

# ===========================================================
# Observação:
# Para rodar no terminal:
#   cd scripts_R
#   Rscript scripts_R_04_alvos_terapeuticos.R
# ===========================================================
