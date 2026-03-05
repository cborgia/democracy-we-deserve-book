-- Pandoc Lua filter: convert fenced divs to LaTeX tcolorbox environments
function Div(el)
  if el.classes:includes("callout") then
    return {
      pandoc.RawBlock("latex", "\\begin{calloutbox}"),
      el,
      pandoc.RawBlock("latex", "\\end{calloutbox}")
    }
  elseif el.classes:includes("deep-dive") then
    return {
      pandoc.RawBlock("latex", "\\begin{deepdivebox}"),
      el,
      pandoc.RawBlock("latex", "\\end{deepdivebox}")
    }
  end
end
