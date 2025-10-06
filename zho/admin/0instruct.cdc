@UTF8
for mor:
mor +d *.cha
(leave as ambiguous)
posttrain +o0errors.cut *.cha
(fix errors in 0errors.cut)
post  *.cha +1
trnfix *.cha

for gra:
run MEGRASP to get %gra tier
convert %gra to %grt
hand correct %grt
run megrasp -t *.cha to create a new megrasp.mod database
replace old megrasp.mod with new one (save and relabel old one)
run mor to create new %mor and %gra tiers
run trnfix +b%gra +b%grt *.cha

for evaluation:
freq +y +sline *.cex +u 
freq +d4 +u *.cha

for close evaluation
(put in CAFont if it is not already)
read each *.trn.cex file

to get a list of the remaining ambiguities in a corpus, use
freq +d1 +u +o3 +re +s"*\^*" +t%mor *.cha > ambigs.cut
