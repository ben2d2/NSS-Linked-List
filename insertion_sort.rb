def insertion_sort(a)
	n = a.length
	(n-1).times do |i|
		j =  i + 1
		while j > 0 && a[j] > a[j-1]
			tmp = a[j]
			a[j] = a[j-1]
			a[j-1] = tmp
			j -= 1
		end
	end
	a
end