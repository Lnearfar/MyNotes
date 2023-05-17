```json
{
    "workbench.colorTheme": "One Dark Pro",
    "editor.fontSize": 20,
    "editor.wordWrap": "on",
    "terminal.integrated.enableMultiLinePasteWarning": false,
    "json.schemas": [],
    "vim.useSystemClipboard": true,
    "vim.insertModeKeyBindings": [
        {
            "before": [
                "c",
                "c"
            ],
            "after": [
                "<Esc>",
                "a",
                "$",
                "$",
                "<Esc>",
                "i"
            ]
        },
    ],
    "vim.vimrc.enable": false,
    "matlab.mlintpath": "E:\\Matlab2020b\\bin\\win64\\mlint.exe",
    "http.proxySupport": "on",
    "http.proxy": "http://127.0.0.1:7890",
    "files.autoGuessEncoding": true,
    "[markdown]": {
        "editor.quickSuggestions": {
            "comments": "on",
            "strings": "on",
            "other": "on"
        }
    },
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
    "latex-workshop.latex.autoClean.run": "onBuilt",
    "latex-workshop.latex.clean.fileTypes": [
        "*.aux",
        "*.bbl",
        "*.blg",
        "*.idx",
        "*.ind",
        "*.lof",
        "*.lot",
        "*.out",
        "*.toc",
        "*.acn",
        "*.acr",
        "*.alg",
        "*.glg",
        "*.glo",
        "*.gls",
        "*.ist",
        "*.fls",
        "*.log",
        "*.fdb_latexmk",
        //comment this line( *.gz)  to enable search from pdf file(Ctrl+ leftClick )
        //"*.gz"
    ],
    //使用 SumatraPDF 预览编译好的PDF文件
    // 设置VScode内部查看生成的pdf文件
    "latex-workshop.view.pdf.viewer": "external",
    // PDF查看器用于在\ref上的[View on PDF]链接
    "latex-workshop.view.pdf.ref.viewer": "auto",
    // 使用外部查看器时要执行的命令。此功能不受官方支持。
    "latex-workshop.view.pdf.external.viewer.command": "E:/SumatraPDF/SumatraPDF.exe", // 注意修改路径
    // 使用外部查看器时，latex-workshop.view.pdf.external.view .command的参数。此功能不受官方支持。%PDF%是用于生成PDF文件的绝对路径的占位符。
    "latex-workshop.view.pdf.external.viewer.args": [
        "%PDF%"
    ],
    // 将synctex转发到外部查看器时要执行的命令。此功能不受官方支持。
    "latex-workshop.view.pdf.external.synctex.command": "E:/SumatraPDF/SumatraPDF.exe", // 注意修改路径
    // latex-workshop.view.pdf.external.synctex的参数。当同步到外部查看器时。%LINE%是行号，%PDF%是生成PDF文件的绝对路径的占位符，%TEX%是触发syncTeX的扩展名为.tex的LaTeX文件路径。
    "latex-workshop.view.pdf.external.synctex.args": [
        "-forward-search",
        "%TEX%",
        "%LINE%",
        "-reuse-instance",
        "-inverse-search",
        "\"E:/Microsoft VS Code/Code.exe\" \"E:/Microsoft VS Code/resources/app/out/cli.js\" --ms-enable-electron-run-as-node -r -g \"%f:%l\"", // 注意修改路径
        "%PDF%"
    ],
}
```
