{
  plugins.overseer = {
    enable = true;
  };

  keymaps = [
    {
      key = "<leader>rl";
      action = "<cmd>OverseerToggle<CR>";
      options = {
        desc = "Task list";
      };
    }
    {
      key = "<leader>rr";
      action = "<cmd>OverseerRun<CR>";
      options = {
        desc = "Run task";
      };
    }
    {
      key = "<leader>rq";
      action = "<cmd>OverseerQuickAction<CR>";
      options = {
        desc = "Action recent task";
      };
    }
    {
      key = "<leader>ri";
      action = "<cmd>OverseerInfo<CR>";
      options = {
        desc = "Overseer Info";
      };
    }
    {
      key = "<leader>ra";
      action = "<cmd>OverseerTaskAction<CR>";
      options = {
        desc = "Task action";
      };
    }
    {
      key = "<leader>rb";
      action = "<cmd>OverseerBuild<CR>";
      options = {
        desc = "Task builder";
      };
    }
    {
      key = "<leader>rc";
      action = "<cmd>OverseeClearCache<CR>";
      options = {
        desc = "Clear cache";
      };
    }
  ];
}
