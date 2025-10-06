@UTF8
mor *.cha +1
(leave as ambiguous)
posttrain +etags.cut +c +o0errors.cut *.cha
(check errors in 0errors.cut)
post  *.cha +1
trnfix *.cha

for evaluation:
freq +y +sline *.cex +u 
freq +d4 +u *.cha

for close evaluation
(put in CAFont if it is not already)
read each *.trn.cex file
