return {
    -- add the ability to navigate between buffers and jump with (]b or [b and ]j or [j)
    "FluxxField/smart-motion.nvim",
    opts = {
        presets = {
            words = false,      -- w, b, e, ge
            lines = false,      -- j, k
            search = true,      -- s, S, f, F, t, T, ;, ,
            delete = true,      -- d + any motion
            yank = true,        -- y + any motion
            change = true,      -- c + any motion
            treesitter = true,  -- ]], [[, af, if, ac, ic, aa, ia, fn, saa, gS, R
            diagnostics = true, -- ]d, [d, ]e, [e
            misc = true,        -- . g. g1-g9 gp gP gA-gZ gmd gmy (repeat, history, pins, multi-cursor)
        },
    },
}
