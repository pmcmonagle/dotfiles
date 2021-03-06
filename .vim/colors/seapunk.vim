" Vim color file - seapunk
" Generated by http://bytefluent.com/vivify 2016-03-01
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "seapunk"

"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi SpecialComment -- no settings --
"hi Typedef -- no settings --
"hi Title -- no settings --
"hi Folded -- no settings --
"hi Include -- no settings --
"hi Float -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi Debug -- no settings --
"hi SpecialChar -- no settings --
"hi StorageClass -- no settings --
hi Normal guifg=#e3e3e3 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
"hi Label -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi Delimiter -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Character -- no settings --
"hi Boolean -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi Define -- no settings --
"hi FoldColumn -- no settings --
"hi EnumerationName -- no settings --
"hi Visual -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi VertSplit -- no settings --
"hi Cursor -- no settings --
"hi SpellLocal -- no settings --
"hi Error -- no settings --
"hi SpecialKey -- no settings --
"hi DefinedName -- no settings --
"hi Tag -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi Repeat -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi Structure -- no settings --
"hi Macro -- no settings --
"hi Underlined -- no settings --
"hi TabLine -- no settings --
hi IncSearch guifg=#05131a guibg=#4ac9f0 guisp=#4ac9f0 gui=NONE ctermfg=23 ctermbg=81 cterm=NONE
hi PreCondit guifg=#ac8cdb guibg=NONE guisp=NONE gui=NONE ctermfg=140 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#1d2529 guibg=#56f7f7 guisp=#56f7f7 gui=NONE ctermfg=235 ctermbg=87 cterm=NONE
hi NonText guifg=#666666 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#320947 guisp=#320947 gui=NONE ctermfg=NONE ctermbg=53 cterm=NONE
hi ErrorMsg guifg=#1c2124 guibg=#e3328a guisp=#e3328a gui=NONE ctermfg=235 ctermbg=161 cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#27bbcf guibg=NONE guisp=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ed80c2 guibg=NONE guisp=NONE gui=NONE ctermfg=212 ctermbg=NONE cterm=NONE
hi Todo guifg=#000000 guibg=#36e3cc guisp=#36e3cc gui=NONE ctermfg=NONE ctermbg=80 cterm=NONE
hi Special guifg=#3bccb4 guibg=NONE guisp=NONE gui=NONE ctermfg=80 ctermbg=NONE cterm=NONE
hi LineNr guifg=#2fbdbd guibg=NONE guisp=NONE gui=NONE ctermfg=37 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#1a1421 guibg=#4cbbeb guisp=#4cbbeb gui=NONE ctermfg=234 ctermbg=81 cterm=NONE
hi PMenuSel guifg=#1f261f guibg=#2fafeb guisp=#2fafeb gui=NONE ctermfg=235 ctermbg=81 cterm=NONE
hi Search guifg=#020b0f guibg=#3bcbff guisp=#3bcbff gui=NONE ctermfg=23 ctermbg=81 cterm=NONE
hi Statement guifg=#50d9a9 guibg=NONE guisp=NONE gui=NONE ctermfg=79 ctermbg=NONE cterm=NONE
hi Comment guifg=#586666 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#292929 guibg=#1fe9f0 guisp=#1fe9f0 gui=NONE ctermfg=235 ctermbg=14 cterm=NONE
hi Number guifg=#818feb guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
hi Operator guifg=#f283e1 guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=NONE guibg=#6b0537 guisp=#6b0537 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Function guifg=#53a2db guibg=NONE guisp=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
hi PreProc guifg=#62bfed guibg=NONE guisp=NONE gui=NONE ctermfg=81 ctermbg=NONE cterm=NONE
hi Exception guifg=#c698d1 guibg=NONE guisp=NONE gui=NONE ctermfg=182 ctermbg=NONE cterm=NONE
hi Keyword guifg=#b872e0 guibg=NONE guisp=NONE gui=NONE ctermfg=134 ctermbg=NONE cterm=NONE
hi Type guifg=#71cad6 guibg=NONE guisp=NONE gui=NONE ctermfg=80 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#3c094d guisp=#3c094d gui=NONE ctermfg=NONE ctermbg=53 cterm=NONE
hi PMenu guifg=#dddddd guibg=#545658 guisp=#545658 gui=NONE ctermfg=253 ctermbg=240 cterm=NONE
hi Constant guifg=#e072ca guibg=NONE guisp=NONE gui=NONE ctermfg=169 ctermbg=NONE cterm=NONE
hi String guifg=#9e9e9e guibg=NONE guisp=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi DiffAdd guifg=NONE guibg=#074f4f guisp=#074f4f gui=NONE ctermfg=NONE ctermbg=23 cterm=NONE
