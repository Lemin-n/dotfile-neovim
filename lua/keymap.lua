local keymap = require("utils").keymap

keymap("n", "<leader>th", ":botright new <Bar> :terminal")
keymap("n", "<leader>ts", ":botright vnew <Bar> :terminal")
keymap("n", "<leader>te", ":lua require('telescope.builtin').live_grep()")
-- keymap("n", "<Left>", ":echo 'Use H'")
-- keymap("n", "<Right>", ":echo 'Use L'")
-- keymap("n", "<Up>", ":echo 'Use K'")
-- keymap("n", "<Down>", ":echo 'Use J'")
