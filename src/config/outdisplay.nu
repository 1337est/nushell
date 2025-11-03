$env.config.render_right_prompt_on_last_line = false
$env.config.float_precision = 2
$env.config.ls.use_ls_colors = true
$env.config.hooks = {
    pre_prompt: []
    pre_execution: []
    env_change: {
        PWD: [{|before, after| null }]
    }
    display_output: "if (term size).columns >= 100 { table -e } else { table }"
    command_not_found: []
}

# Making the background completely opaque with alpha 00, and making "hidden"
# Then setting the hints (autosuggestions) to be the same
$env.config.color_config.background = { fg: '#00000000' bg: '#00000000' attr: h}
$env.config.color_config.hints = $env.config.color_config.background
