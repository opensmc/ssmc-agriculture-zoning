#!/bin/sh


# OK, extract eevery PDF page from 4-50 into a file named raw_panel_%-2d.tiff
# Uses image magic 'convert' command.
# Pass .pdf file as 1st arg

pdffile="$1"
outname="$2"
firstpage="$3"
lastpage="$4"
page_panel_delta="$5"

if [ "$pdffile" = "" -o ! -e "$pdffile" ]; then
    echo "must pass a PDF file as 1st arg" 1>&2
    exit 1
fi
if [ "$outname" = "" ]; then
    echo "must pass a output filename stub (without extention) as 2st arg" 1>&2
    exit 1
fi
if [ "$firstpage" = "" ]; then
    echo "must pass a starting PDF page number, as 3rd arg" 1>&2
    exit 1    
fi
if [ "$lastpage" = "" ]; then
    echo "must pass a final PDF page number, as 4th arg" 1>&2
    exit 1    
fi
if [ "$page_panel_delta" = "" ]; then
    page_panel_delta=0
fi

# ImageMagic numbers its pages from 0.
firstpage=`expr $firstpage - 1`
lastpage=`expr $lastpage - 1`

# Pick a density (DPI resolution) and work out US letter page size
# for that resolution. Eschew floating point, so handle 8.5 as 17/2.
density=150
width=`expr $density \* 17 / 2`
height=`expr $density \* 11`

page=$firstpage
while [ $page -le $lastpage ]; do
    panel=`expr $page + 1 + $page_panel_delta`
    set -x
    convert -density $density "${pdffile}[${page}]" -geometry ${width}x${height} -crop 945x1265+148+200 -colorspace Gray -depth 8 "${outname}_${panel}.tiff"
    set +x
    page=`expr $page + 1`
done
