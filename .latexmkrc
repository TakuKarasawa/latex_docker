# .latexmkrc - upLaTeX + dvipdfmx + 日本語

# LaTeX エンジン: uplatex
$latex = 'uplatex -synctex=1 -interaction=nonstopmode -halt-on-error %O %S';
$latex_silent = 'uplatex -synctex=1 -interaction=batchmode -halt-on-error %O %S';

# DVI → PDF 変換: dvipdfmx
$dvipdf = 'dvipdfmx %O -o %D %S';

# 文献・索引（使わない場合も一応設定）
$bibtex   = 'pbibtex %O %B';
$makeindex = 'mendex %O -o %D %S';

# PDF 生成モード: LaTeX → DVI → PDF
$pdf_mode = 3;

# 最大リトライ回数（相互参照の解決など）
$max_repeat = 5;