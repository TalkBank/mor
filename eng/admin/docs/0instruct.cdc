@UTF8
for mor:
run mor +xb *.cha (to make sure all words are recognized)
run mor +d *.cha (non-disambiguated %mor line)
(leave as ambiguous)
you either have a hand done %trn tier, or you can bootstrap
run posttrain +o0errors.cut *.cha
(fix errors in 0errors.cut)
put new post.db into the main MOR ENG folder (save and relabel old one)
run mor +d1 *.cha (runs mor and post, does not run megrasp)
run check *.cha
run trnfix +b%mor +b%trn *.cha
fix stuff, rerun the whole thing

for gra:
run megrasp *.cha to get %gra tier
convert %gra to %grt
hand correct %grt
run megrasp -t *.cha to create a new megrasp.mod database
put new megrasp.mod in the main MOR ENG folder (save and relabel old one)
run mor *.cha to create new %mor and %gra tiers
run trnfix +b%gra +b%grt *.cha

for evaluation:
freq +y +sline *.cex +u 
freq +d4 +u *.cha

for close evaluation
(put in CAFont if it is not already)
read each *.trn.cex file

to get a list of the remaining ambiguities in a corpus, use
freq +d1 +u +o3 +re +s"*\^*" +t%mor *.cha > ambigs.cut

 
