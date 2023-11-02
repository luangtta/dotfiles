-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
-- general
map("n", ";R", ":source %<CR>", { desc = "Reload config without restart nvim" })
map("n", ";S", ":wa!<CR>", { desc = "Save all: forced!" })
map("n", ";Q", ":wqa!<CR>", { desc = "Save and quit all: forced!" })
map("n", "qq", ":q!<CR>", { desc = "Save/exit this: forced!" })
--  write
map("n", "<C-a>", "<Esc>0ggvG$<CR>", { desc = "Select all text and enter" })
map("n", "<Space><Right>", ":%s/", { desc = "Replace 'x' word in the whole file" })
map("n", "<Space><Left>", ":s/", { desc = "Replace 'x' word at the same line" })
map("n", "<Space><Up>", "0v$y<CR>", { desc = "Copy this text line and enter" })
map("n", "<Space><Down>", "0v$c", { desc = "Cut this text line and enter" })
map("n", "<Space>n", "y0", { desc = "Copy text line from this to begin" })
map("n", "<Space>m", "y$", { desc = "Copy text line from this to the end" })
map("n", "<Space>nn", "d0", { desc = "Delete text line from this to begin" })
map("n", "<Space>mm", "D", { desc = "Delete text line from this to the end" })
--map('v', '<C-c>', '"+y')
--map('i', '<C-v>', '<ESC>"+pa')
-- buffer, split, tab
map("n", "bn", ":bn<CR>", { desc = "Next buffer" })
map("n", "bm", ":bp<CR>", { desc = "Prev buffer" })
map("n", "vs", ":vsplit<CR>", { desc = "Vertical split" })
map("n", "hs", ":split<CR>", { desc = "Horizontal split" })
map("n", "<leader>k", "<C-w>t<C-w>k", { desc = "Change split vert to horiz" })
map("n", "<leader>h", "<C-w>t<C-w>h", { desc = "Change split horiz to vert" })
-- neotree
map("n", "<leader>a", ":Neotree dir=~<CR>", { desc = "Open all directory tree" })
-- Abrir console python
map("n", ";p", ":vs term:// python %<CR><Insert>", { desc = "Open python console" })
--[[ LEMBRAR: Atalhos úteis
>>> Trocar uppercase/lowercase:
>: ~
Mouse sobre o caracter e digitar ~
Pode ser combinado.
Exemplo:
Inverter toda a linha a partir do cursor
>: g~$
gu ou gu + seta pelas linhas: altera as 2 linhas

>>> Ir para seu elemento correspondente:
Posicionar o mouse sobre o caracter: { [ ( ) ] } e pressionar %

>>> Entrar em modo de Inserção ao final da linha:
A

>>> Apagar toda palavra para reescrever:
ciw

>>> Ver lista de atalhos:
<leader>sk

>>> Grep
<leader>/

>>> Andar com linha:
<A-j> e <A-k> (Alt J e Alt K)

>>> Selecionar colorscheme
<space>uC 

>>> Comentar linhas:
  <C-v> selecionar linhas I caracter <Esc>
      Sendo:
      <C-v> ou <C-q> modo Visual Block
      Selecionar linhas = as linhas a comentar
      I = letra i maiúscula
      caracter = caracter típico do comentário
      <Esc> para concluir e inserir

  outro modo:
  <C-q>xjI<esc>
      Sendo:
      x = numero de linhas
      jota minúsculo
      I maiúsculo
      // = caracter típico do comentário
      <esc> = tecla esc

>>> Descomentar
Mesmos passos, sendo que o x ou delete para apagar o caracter
]]
--
