####################################### Za100 contig 6 GC %
contig6 = open("C:/Users/bml99/Documents/Quast/Za100/Za100_tig6.fa")
sequences = contig6.read()
sequences = sequences[113:-1]

base = ["A","T","G","C"]

base_counts = []
for x in base:
    count = sequences.count(x)
    base_counts.append(count)
    print(base_counts)
    
contig6.close()

total_bases = base_counts[0]+base_counts[1]+base_counts[2]+base_counts[3]
print(total_bases)

GC_content = (base_counts[2]+base_counts[3])/total_bases
print("The GC content is " + str(GC_content*100)[0:4] + "%")
