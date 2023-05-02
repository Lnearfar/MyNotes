```json
{
    "workbench.colorTheme": "One Dark Pro",
    "editor.fontSize": 20,
    "latex-workshop.latex.tools": [
    {
        "name": "pdflatex",
        "command": "pdflatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "%DOCFILE%"
        ]
    },
    {
        // 编译工具和命令
        "name": "xelatex",
        "command": "xelatex",
        "args": [
            "-synctex=1",
            "-interaction=nonstopmode",
            "-file-line-error",
            "-pdf",
            "%DOCFILE%"
        ]
    },
    {
        "name": "bibtex",
        "command": "bibtex",
        "args": [
            "%DOCFILE%"
        ]
    }
],
    "latex-workshop.latex.recipes": [
    {
        "name": "pdflatex",
        "tools": [
            "pdflatex"
        ]
    },
    {
        "name": "xelatex",
        "tools": [
            "xelatex"
        ],
    },
    {
        "name": "xe->bib->xe->xe",
        "tools": [
            "xelatex",
            "bibtex",
            "xelatex",
            "xelatex"
        ]
    },
    {
        "name": "pdf->bib->pdf->pdf",
        "tools": [
            "pdflatex",
            "bibtex",
            "pdflatex",
            "pdflatex"
        ]
    }
],
"editor.wordWrap": "on",
"terminal.integrated.enableMultiLinePasteWarning": false,
"json.schemas": [],
"vim.useSystemClipboard": true,
"vim.insertModeKeyBindings": [
    {
        "before":["c","c"],
        "after":["<Esc>","a","$","$","<Esc>","i"]
    },
],
"vim.vimrc.enable": false,
"matlab.mlintpath": "E:\\Matlab2020b\\bin\\win64\\mlint.exe",
"http.proxySupport": "on",
"files.autoGuessEncoding": true,
"http.proxy": "http://127.0.0.1:7890",
"window.zoomLevel": -1,
}
```
