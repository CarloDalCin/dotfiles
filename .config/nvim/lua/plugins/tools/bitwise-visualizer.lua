return {
    -- TODO: put the visualization inside a floating menu (blink style)
    "wellatleastitried/bitwise-visualizer.nvim",
    main = "bitwise-visualizer",
    event = "VeryLazy",
    opts = {
        width = "auto",

        show_hex = true,

        position = "below",

        update = {
            in_insert = true,
        }
    },
}
