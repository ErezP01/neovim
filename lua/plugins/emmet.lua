return {
  -- Emmet for quick HTML boilerplate
  {
    "mattn/emmet-vim",
    config = function()
      vim.g.user_emmet_leader_key = "<C-y>" -- You can change the leader key
    end,
  },
}
