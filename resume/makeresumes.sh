# find ./figures -type f -name '*.svg' -print0 | xargs -0 -n2 -P2 -I{} inkscape {} --export-filename figures/{}.pdf 
find . -type f -name '*.md' -print0 | xargs -0 -n2 -P2 -I{} pandoc {} -f markdown --template=resume_template.tex --pdf-engine=xelatex -o output/{}.pdf #--filter svg_filter.py
