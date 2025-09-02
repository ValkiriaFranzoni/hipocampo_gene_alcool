# ===========================================================
# Projeto: Impacto do Álcool no Hipocampo - Gráficos de Expressão
# Linguagem: R
# Pacotes necessários: ggplot2, dplyr, readr
# Execução: source("scripts_R/scripts_R_02_expression_plots.R")
# ===========================================================

# 1. Carregar pacotes --------------------------------------------------------
if (!require("ggplot2")) install.packages("ggplot2")
if (!require("dplyr")) install.packages("dplyr")
if (!require("readr")) install.packages("readr")

library(ggplot2)
library(dplyr)
library(readr)

# 2. Definir caminho dos dados -----------------------------------------------
exp_path <- "data/processed/expressoes.csv"
stopifnot(file.exists(exp_path))

# 3. Ler dados ---------------------------------------------------------------
dados <- read_csv(exp_path, show_col_types = FALSE)

# 4. Definir ordem das condições --------------------------------------------
ordem <- c("Pre_Inflamacao", "Abstinencia", "Pos_Inflamacao")
dados$Condicao <- factor(dados$Condicao, levels = ordem)

# 5. Gerar Boxplot com visual científico ------------------------------------
p1 <- ggplot(dados, aes(x = Condicao, y = Expressao, fill = Gene)) +
  geom_boxplot(alpha = 0.7, outlier.shape = NA, color = "black") +
  geom_jitter(width = 0.2, alpha = 0.4, size = 2, shape = 21, stroke = 0.2) +
  labs(
    title = "Expressão de Genes Inflamatórios",
    x = "Condição Experimental",
    y = "Nível de Expressão"
  ) +
  theme_bw(base_size = 14) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    legend.position = "bottom",
    panel.grid.major = element_line(color = "gray85"),
    panel.grid.minor = element_blank()
  )

if (!dir.exists("imagens")) dir.create("imagens")
ggsave("imagens/boxplot_expressao.png", p1, width = 9, height = 6, dpi = 600)

# 6. Gerar gráfico de linha (tendência) -------------------------------------
p2 <- dados %>%
  group_by(Gene, Condicao) %>%
  summarise(media = mean(Expressao, na.rm = TRUE), .groups = "drop") %>%
  ggplot(aes(x = Condicao, y = media, group = Gene, color = Gene)) +
  geom_line(linewidth = 1) +
  geom_point(size = 3) +
  labs(
    title = "Tendência da Expressão Gênica",
    x = "Condição Experimental",
    y = "Média de Expressão"
  ) +
  theme_bw(base_size = 14) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    legend.position = "bottom",
    panel.grid.major = element_line(color = "gray85"),
    panel.grid.minor = element_blank()
  )

ggsave("imagens/linha_expressao.png", p2, width = 9, height = 6, dpi = 600)

# Mostrar gráficos na tela do RStudio
print(p1)
print(p2)

print("02_expression_plots.R concluído. Gráficos científicos salvos em /imagens.")


# ===========================================================
# Para rodar no terminal:
# cd scripts_R
# Rscript scripts_R_02_expression_plots.R
# ===========================================================

