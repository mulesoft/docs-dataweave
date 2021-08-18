#!/bin/sh

PATH_DW="/Users/sduke/antora/src/docs-dataweave/modules/ROOT/assets/images/"

PATH_MULE="/Users/sduke/antora/src/docs-mule-runtime-MOVE-DW/modules/ROOT/assets/images/"

### 3.7 TO DW 1.0
# FILES_37_DW10="
# add-metadatadw.png
# ex2outputdw.png
# ex2inputexpecteddw.png
# ex2-flowdw.png
# dw-mapping-tut1.png
# dw-tut1-fixed-vals.png
# dw-buttons.png
# ex3-metadatadw.png
# ex3-flowdw.png
# dw-tut1.png
# dw-migrator-script.png
# file-to-file-dw-stream.png
# file-to-file-dw-log.png
# file-to-file-dw-log-string.png
# dw-migrator-script.png
# "
# ATTACHMENTS_37_DW10="
# dw_example1.json
# dw_example2.json
# "

#grep --exclude "*.json" --exclude "*.class" --exclude "*.dwl" --exclude "*.adoc" -rl $PROPERTY_NAME .
# grep --exclude=\*.{dwl,html,htm,json,adoc,class,bin,pack,ts,xml,asciidoc,xsd,properties,ast,transformed,result,txt,multipart,yaml,message,java,avro,md} -rlw $PROPERTY_NAME .

for f in $FILES_37_DW10
do
cp $f $PATH_DW
done


#######
# REGEX for stripping down to file names
# ^\#.*\:\:
# \[.*\]
#######
# 3.7 IMAGES FOR DW 1.0
#./dataweave-tutorial.adoc:image::add-metadatadw.png
#./dataweave-tutorial.adoc:image::ex2outputdw.png
#./dataweave-tutorial.adoc:image::ex2inputexpecteddw.png
#./dataweave-tutorial.adoc:image::ex2-flowdw.png
#./dataweave-tutorial.adoc:image::dw-mapping-tut1.png
#./dataweave-tutorial.adoc:image::dw-tut1-fixed-vals.png
#./dataweave-tutorial.adoc:image::dw-buttons.png
#./dataweave-tutorial.adoc:image::ex3-metadatadw.png
#./dataweave-tutorial.adoc:image::ex3-flowdw.png
#./dataweave-tutorial.adoc:image::dw-tut1.png
#./dataweave-migrator.adoc:image::dw-migrator-script.png
#./dataweave-streaming.adoc:image::file-to-file-dw-stream.png
#./dataweave-streaming.adoc:image::file-to-file-dw-log.png
#./dataweave-streaming.adoc:image::file-to-file-dw-log-string.png
#./index.adoc:image::dw-migrator-script.png
########
