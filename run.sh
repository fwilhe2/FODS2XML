docker run --rm -i \
    -u $(id -u) \
    -v $(pwd):/src \
    klakegg/saxon \
    xslt -s:minimal.fods -xsl:fods2tbl.xsl -o:temp-output.xml

docker run --rm -i \
    -u $(id -u) \
    -v $(pwd):/src \
    klakegg/saxon \
    xslt -xsl:tbl2data.xsl -s:temp-output.xml -o:output.xml