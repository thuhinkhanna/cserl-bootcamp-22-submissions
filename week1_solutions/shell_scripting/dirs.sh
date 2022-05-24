mkdir root
cd root
for i in 1 2 3 4 5
do
	mkdir "dir${i}"
	cd "dir${i}"
	for j in 1 2 3 4
	do
		touch "file${j}"
		for k in $(seq 1 $j)
		do
			echo $j >> "file${j}"
		done
	done
	cd ..
done	
