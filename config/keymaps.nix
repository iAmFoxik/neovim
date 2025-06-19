{
    globals = {
        mapleader = " ";
        maplocalleader = " ";
    };

    keymaps = [
        # Split
        {
            key = "<leader>-";
            action = ":split<CR>";
        }
        {
            key = "<leader>_";
            action = ":vsplit<CR>";
        }
	    # Windows movement
        {
            key = "<leader>h";
            action = "<C-w>h";
        }
        {
            key = "<leader>j";
            action = "<C-w>j";
        }
        {
            key = "<leader>k";
            action = "<C-w>k";
        }
        {
            key = "<leader>l";
            action = "<C-w>l";
        }
	    # Windows Resize
        {
            key = "<leader>H";
            action = "<C-w>>";
        }
        {
            key = "<leader>J";
            action = "<C-w>-";
        }
        {
            key = "<leader>K";
            action = "<C-w>+";
        }
        {
            key = "<leader>L";
            action = "<C-w><";
        }
        {
            key = "<C-Up>";
            action = ":resize -2<CR>";
        }
        {
            key = "<C-Down>";
            action = ":resize +2<CR>";
        }
        {
            key = "<C-Left>";
            action = ":vertical resize +2<CR>";
        }
        {
            key = "<C-Right>";
            action = ":vertical resize -2<CR>";
        }
	    # Close tab
        {
            key = "<leader>x";
            action = "<C-w>c";
        }
        # NoSearch
        {
            key = ",,";
            action = ":nohlsearch<CR>";
        }
        # Line movement
        {
	    mode = "n";
            key = "<S-k>";
            action = ":move-2<CR>";
        }
        {
	    mode = "n";
            key = "<S-j>";
            action = ":move+<CR>";
        }
        # Block movement
        {
            mode = "v";
            key = "<S-k>";
            action = ":m '<-2<CR>gv=gv";
        }
        {
            mode = "v";
            key = "<S-j>";
            action = ":m '>+1<CR>gv=gv";
        }
    ];
}

