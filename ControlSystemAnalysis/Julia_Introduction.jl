### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# ╔═╡ 74365de0-366c-11eb-3b9d-e5c2a7aa4623
md"# _Βασικές Αρχές Προγραμματισμού_

## Εισαγωγή στην julia 

Η γλώσσα προγραμματισμού Julia είναι μια ανοιχτού κώδικα γλώσσα που έχει τόσο την απλότητα υψηλού επιπέδου όπως η Python, όσο και την απόδοση χαμηλού επιπέδου όπως η γλώσσα C. Σε αυτό το Notebook θα γίνει μία εισαγωγή στι βασικές λειτουργίες της Julia. 

Οι βασικές λειτουργίες της γλώσσας περιγράφονατι με λεπτομέρεια στο [documentation](https://docs.julialang.org/en/v1/) της Julia.
"

# ╔═╡ e4aa66fe-366d-11eb-1e75-43aa75d36ce1
md"### Δεδομένα και Βασικές πράξεις 

Οι βασικοι τύποι δεδομένων στην julia είναι:

- [Βαθμωτά μεγέθη `Int64` και πραγματικοί αριθμοί `Float64`](https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/#Integers-and-Floating-Point-Numbers): 1.23, -135, 3.77e-7 . Το πρόθεμα `Int` ή `Float` εκφράζει τον τύπο, και ο αριθμός 64 την ακρίβεια, δηλαδή πόσα bits χρησιμοποιούνται για την αναπαράσταση του αριθμού. H standard ακρίβεια είναι αυτή του συστήματος που χρησιμοποιείτε δηλαδή 32 ή 64 bit. Ωστόσο, η julia δίνει την δυνατότητα να αλλάξει η ακρίβεια. 

- Λογικές τιμές `Bool`: `true` or `false` 

- [Αλφαριθμιτικές παραστάσεις `Strings` και χαρακτήρες `Char`](https://docs.julialang.org/en/v1/manual/strings/): \"Hello, world!\" ,'X'. Η julia σε αντίθεση με άλλες γλώσσες διακρίνει τους χαρακτήρες από τα αλφαριθμιτικά. Η εισαγωγή των πρώτων γίνεται με μονά `' '`, ενώ των δεύτερων με διπλά `\" \"`

στην Julia τον τύπο δεδομένων τον ελέγχουμε με την εντολή `typeof(x)`
"

# ╔═╡ 05a407e0-3989-11eb-3ae7-f512ae2aac64
1

# ╔═╡ 092e290e-3989-11eb-0bd0-f554a8f30c27
-2.323

# ╔═╡ 23824826-3989-11eb-18ca-f7a0257420db
true

# ╔═╡ 2b9f4746-3989-11eb-123b-8d64e8950dc6
"Hello World"

# ╔═╡ 315eabb0-3989-11eb-2e69-43ccbd466b97
'A'

# ╔═╡ 0e739e30-3989-11eb-28ac-a5f9d4db6875
typeof(3)

# ╔═╡ 1fb187b6-3989-11eb-3dbf-f38cbab02188
typeof(-2.32)

# ╔═╡ 3c5df0ca-3989-11eb-1317-93ed66165828
typeof("Hello World")

# ╔═╡ 3c0f0fbe-3989-11eb-23d3-4be1a5f6f1da
typeof('A')

# ╔═╡ ba047e80-36fb-11eb-370e-63b2a840657c
md" #### Αριθμιτικές Πράξεις

Οι [βασικές αριθμητικές πράξεις](https://docs.julialang.org/en/v1/manual/mathematical-operations/) εκτελούνται με χρήση των τελεστών που φαίνονται στον παρακάτω πίνακα:

Operation | Type This
:------------ | :-------------:
add | +
subtract | -
multiply | *
divide | /
power | ^
"

# ╔═╡ f8817160-366d-11eb-0eab-910ab3407baf
2+1

# ╔═╡ 27e36ad0-366e-11eb-0e06-7f57333ecaee
2-7

# ╔═╡ 2d19a550-366e-11eb-398d-579392114b5e
2*3

# ╔═╡ 319171d0-366e-11eb-2a81-d3b2509ba844
3/7

# ╔═╡ 356bece0-366e-11eb-0c2c-814c4d8af8b4
3^3

# ╔═╡ 56f4a662-399e-11eb-3129-cb977fbad0d8
0.1 + 0.2

# ╔═╡ 936d798e-399e-11eb-0703-a71031b8484f
md" #### Λογικές Πράξεις

Οι [βασικές λογικές πράξεις](https://docs.julialang.org/en/v1/manual/mathematical-operations/#Numeric-Comparisons) εκτελούνται με χρήση των τελεστών που φαίνονται στον παρακάτω πίνακα:

Operation | Type This
:------------ | :-------------:
equal | ==
not equal | !=,≠
greater, less | >,<
greater, less equal | >=,<= ≤, ≥
and | &&, &
or | \|\|, \|
not | !
"

# ╔═╡ de2ffa5a-399e-11eb-3a9a-fddca0959ed0
1≠2

# ╔═╡ 26be0dac-399f-11eb-359e-195b1bfc051a
1==3

# ╔═╡ 2b357622-399f-11eb-1e9e-ffd405279559
3<=1

# ╔═╡ 2ebc3538-399f-11eb-09d8-67aaa105827f
begin
	l = true
	(1>9)&&l
end

# ╔═╡ 4a4f9e16-399f-11eb-0b8c-07bd683f4ef1
true|false

# ╔═╡ 41b7f750-366e-11eb-309f-6f9b31d596a2
md"### Μεταβλητές 

Όπως σε όλες τις γλώσσες, η julia χειρίζεται τα δεδομένα με χρήση [μεταβλητών](https://docs.julialang.org/en/v1/manual/variables/) H julia είναι δυναμική γλώσσα προγραμματισμού, δηλαδή δεν είναι απαραίτητο να ορίσουμε από πριν τον τύπο κάθε μεταβλητής, και απλά εκχωρούμε απευθείας την τιμή της
"

# ╔═╡ 09aade1c-398a-11eb-3880-77fe749923e2
x = 4

# ╔═╡ 3d59e5dc-398a-11eb-089b-0bf139ff18c9
y =3.14

# ╔═╡ 4268309c-398a-11eb-11ca-b7c4a381b730
z = true

# ╔═╡ 465afb94-398a-11eb-02e2-3f5a69734610
name="Vassilis"

# ╔═╡ 4cce997c-398a-11eb-19d3-b9bd9a766c6a
ch = 'D'

# ╔═╡ 67688270-398a-11eb-0683-e9e2e895b60e
typeof(y)

# ╔═╡ 36aeae20-399e-11eb-2ba8-6f7110f2488a
begin
a = 1; b = 2; c = 3; d = 4
a,b = c,d
end

# ╔═╡ da729fa4-398b-11eb-2c7d-47113c1bba2d
md" Ωστόσο, στην περίπτωση όπου θέλουμε να δεσμεύσουμε μια μεταβλητή να δέχετε μόνο συγκεκριμένο τύπο δεδομένων χρησημοποιούμε την εντολή `var::TypeName`. Η ίδια εντολή χρησημοποιέιτε για να επαληθέυσουμε αν μία μιαταβλητή που έχει οριστεί ή μία έκφραση ανήκει σε κάποιο τύπο"

# ╔═╡ 60722250-398c-11eb-152f-f18cee0a3cd0
begin
	my_name::String = "Vasilis"
	my_name = "George"
end

# ╔═╡ deb35736-398c-11eb-07df-2374bf5a0109
begin
	my_name1::String = "Vasilis"
	my_name1 = 1
end

# ╔═╡ 9ddbe510-398d-11eb-17c6-3f14b82bbb1d
x::Int64

# ╔═╡ c4228b48-398d-11eb-2ebb-d1dd722bbe8d
x::Float64

# ╔═╡ 7172398c-398a-11eb-2b01-4125ac9a58d6
md" #### Ονόματα Μεταβλητών 
Στην julia τα [ονόματα μεταβλητών](https://docs.julialang.org/en/v1/manual/variables/#Allowed-Variable-Names) μπορούν να ξεκινάνε με γράμματα, underscore, ή ακόμα και με Unicode χαρακτήρες (Lu/Ll/Lt/Lm/Lo/Nl (letters), Sc/So (currency and other
symbols), and a few other letter-like characters (e.g. a subset of the Sm math symbols))!!!

"

# ╔═╡ 537c3dde-398e-11eb-3329-43b3dd6ea39d
_x = 3

# ╔═╡ 5a05d324-398e-11eb-1c77-5f8e4f9358fc
γ = 12

# ╔═╡ 6c991186-398e-11eb-2389-d3da4357efb2
😺 = 1

# ╔═╡ dff3740a-399b-11eb-1dcf-c5f2aca5e7d7
® = 12

# ╔═╡ 1585544e-399c-11eb-2060-5d936ba8b93b
🌍 =23

# ╔═╡ 1a4b85d4-399c-11eb-082d-d91dfe2cd19f
🌍+😺

# ╔═╡ 56bb1e46-39a4-11eb-17c8-4fdebda060dd
md"""
!!! warning "Συμβάσεις για ονόματα μεταβλητών "
	- Τα ονόματα των μεταβλητών να έιναι με μικρά γράμματα
	- Ο χωρισμός των λέξεων να γίνεται με (`_`), αλλά να χρησημοποιέιτε μόνο όταν είναι απολύτως απαραίτητο
	- Τα ονόματα των τύπων και των Module να ξεκινάν με κεφαλίο γράμμα
	- Τα ονόματα των functions και macros με μικρά γράμματα χωρίς υπόπαυλες
	- Τα functions που αλλάζουν τις τιμές των ορισμάτων τους να γράφονται με ! στο τέλος
		"""

# ╔═╡ ca5006de-3a04-11eb-0e80-81f2f839e54d
md" ### Σχόλια

Τα σχόλια στην Julia εισάγονται με χρήση του `#`

"

# ╔═╡ f796c7c4-3a04-11eb-3422-b5be7f30b934
begin
	# Comment
	3+4
	# 3+4 = 7
end

# ╔═╡ ebb98492-399f-11eb-380a-1b309cd67d00
md" ### Πίνακες και διανύσματα
Τα [διανύσματα και οι πίνακες](https://docs.julialang.org/en/v1/manual/arrays/) στην julia δίνονται μέσα σε αγκύλες `[]`. 

- Στα διανύσματα όταν αυτά θέλουμε να σε μορφή γραμής δίνουμε τα στοιχεία με κενό ενώ αν θέλουμε να είναι στήλη με `,`.

- Στους πίνακες, οι σειρές δίνονται με είτε με κενά, ενώ η αλλάγή στήλης γίνεται με `;`. 

Η αρίθμιση των σειρών και των στηλών ξεκινάει από το 1. 
"

# ╔═╡ 29f513e8-39a0-11eb-3df9-b93523f1f516
v = [12 43 5 2 12 45]

# ╔═╡ 87ce89b2-39a1-11eb-1855-5b219db73b3c
w = [1,4,6]

# ╔═╡ 37d3b802-39a0-11eb-3b5c-d7d58d4a2190
A = [1 3 5; 23 5 6; 4 2 1]

# ╔═╡ 78b2d07e-39a0-11eb-33c9-7504f732f850
md"
Το κάλεσμα των στοιχείων ενός πίνακα ή ενός διανύσματος γίνεται με χρήση του ονόματος και στην συνέχεια την θέση του στοιχείου, μέσα σε αγκύλες`[]`
"

# ╔═╡ ff8adbaa-39a0-11eb-1c26-898a059ff28c
v[1]

# ╔═╡ 1cfd30f2-39a1-11eb-3e87-5bb5b5923db1
A[2,2]

# ╔═╡ a1a3426a-3a0f-11eb-395d-cd843d6e3e69
begin
	p1 = [5, 6, 8]
	p2 = copy(p1)
	p1[2] = -6
	p1
end

# ╔═╡ 0ab422ba-3a10-11eb-1752-434398258ae8
p2

# ╔═╡ aa96e07e-39a2-11eb-3f56-efd56c4ae152
md" ### Βασικές Μαθηματικές Συναρτήσεις
Η julia παρέχει μία έτοιμη βιβλιοθήκη με τις [βασικές μαθηματικές συναρτήσεις](https://docs.julialang.org/en/v1/manual/mathematical-operations/#Numerical-Conversions). Κάποιες απο αυτές φαίνονται στον παρακάτω πίνακα:

Function | Description
:------------- | :----------------------
round(x)	|round x to the nearest integer	
floor(x)	|round x towards -Inf				
ceil(x)		|round x towards +Inf					
trunc(x)	|round x towards zero						
div(x,y), x÷y|	truncated division; quotient rounded towards zero
rem(x,y)	|remainder; satisfies x == div(x,y)*y + rem(x,y); sign matches x
mod(x,y)	|modulus; satisfies x == fld(x,y)*y + mod(x,y); sign matches y
abs(x)	    |a positive value with the magnitude of x
sign(x)	| indicates the sign of x, returning -1, 0, or +1
sqrt(x), √x	| square root of x
exp(x)	| natural exponential function at x
log(x)	| natural logarithm of x
log(b,x)	|base b logarithm of x
log2(x)	| base 2 logarithm of x
"

# ╔═╡ 4f5931e4-39a7-11eb-06a2-6b3bd9002569
md"""
!!! warning "Τριγωνομετρικές Συναρτήσεις "
	sin    cos    tan    cot    sec    csc
	sinh   cosh   tanh   coth   sech   csch
	asin   acos   atan   acot   asec   acsc
	asinh  acosh  atanh  acoth  asech  acsch
	sinc   cosc
	sind   cosd   tand   cotd   secd   cscd
	asind  acosd  atand  acotd  asecd  acscd
"""

# ╔═╡ 75ad8b06-39a7-11eb-290d-b10a4c22dc2d
floor(3.6)

# ╔═╡ 7e6cbcda-39a7-11eb-0c95-d7cc6ef03a8d
ceil(2.1)

# ╔═╡ 82c521f2-39a7-11eb-3d80-8b6b6eaa9909
exp(2)

# ╔═╡ 88d97078-39a7-11eb-2b8d-a1260d878fef
abs(-23)

# ╔═╡ 8ea4bda8-39a7-11eb-0f38-8980a019f96f
atan(pi)

# ╔═╡ 2c055456-3a11-11eb-003d-8d14f5752d6b
√9

# ╔═╡ bee26a0a-39a7-11eb-2067-dfde2eba14bd
md" ### Δομές Ελέγχου
H Julia έχει [δομές ελέγχου](https://docs.julialang.org/en/v1/manual/control-flow/) οι οποίες συντάσονται ως ακολούθως


##### If

```
if (condition_1)
 	...
	commands
	...
elseif (condition_1)
  	...
	commands
	...
else
  	...
	commands
	...
end
```
"

# ╔═╡ 7abc1fc6-39a8-11eb-3833-d91f525c929a
begin
	var = 7
	if var > 10
 		"var has value $var and is bigger than 10."
	elseif var < 10
 		"var has value $var and is smaller than 10."
	else
 		"var has value $var and is 10."
	end
end

# ╔═╡ a29eb7f6-39a8-11eb-36d8-8161e7c414ee
md"
##### For

```
for i = start:step:end
	commands
end
```
"

# ╔═╡ cfd5f856-39a8-11eb-2dce-07fb6647027d
begin
	n = zeros(10)
	for i = 1:10
 		n[i] = i+10
		println("Hello World")
	end
	n
end

# ╔═╡ 9bdea7d6-39a9-11eb-3736-b1da63e35c55
md"
##### While

```
While condition 
	commands
end
```
"

# ╔═╡ 2dd384b2-39fe-11eb-2e91-a3ea7c0bf356
begin
	a1 = 10; b1 = 15
	while a1 < b1
		# body: process(a)
		println(a1)
		a1 += 1
	end
end

# ╔═╡ 9004c882-39fe-11eb-196a-11471fa8d2c8
md" ##### Βreak statement
Το χρησημοποιούμε εάν για κάποιο λόγο θέλουμε να σταματήσουν οι επαναλήψεις

"

# ╔═╡ ce6ac220-39a9-11eb-0156-39061c9635c2
begin
	a2 = 10; b2 = 150
	ni = 1
	while a2< b2
		ni+=1
 		println(a2)
		a2 -= 1
 		if ni >=50
 			break
 		end
	end
	a1
end

# ╔═╡ daf80fe8-39fe-11eb-27d6-01770e89b121
md" ##### Continue statement
Το χρησημοποιούμε εάν για κάποιο λόγο θέλουμε να παραληφθούν κάποιες επαναλήψεις οι επαναλήψεις

"

# ╔═╡ f9fc9ebe-39fd-11eb-1825-d35f379defe5
begin
	t=zeros(10)
	for n in 1:10
		if 3 <= n <= 6
			continue # skip current iteration
		end
	t[n] = n
	end
	t
end

# ╔═╡ fd5e0dee-39fe-11eb-0f71-3180b58128c1
md" ### Functions
- Η julia είναι πάνω από όλα μια γλώσσα που βασίζεται στις [συναρτήσεις](https://docs.julialang.org/en/v1/manual/functions/) (functional) επειδή οι υπολογισμοί και οι μετασχηματισμοί δεδομένων γίνονται μέσω συναρτήσεων.
- Τα προγράμματα είναι δομημένα γύρω από τον καθορισμό συναρτήσεων και την υπερφόρτωσή (overloading) τους για διαφορετικούς συνδυασμούς τύπων επιχειρημάτων

Ο ορισμός συναρτήσεων γίνεται ως εξής:

```
function fname(arglist)
	# function body...
	return value(s)
end

```

"

# ╔═╡ dbe584cc-39ff-11eb-2f94-1db11686ec45
function mult(x, y)
	println("x is $x and y is $y")
	return x * y
end

# ╔═╡ eb983002-39ff-11eb-36a4-a3b10e4070fe
mult(3,5)

# ╔═╡ fa557cb2-39ff-11eb-262c-eb8a4af59ac1
function mult2(x, y)
	println("x is $x and y is $y")
	if x == 1
	return y
	end
	x * y
end

# ╔═╡ 396b68bc-3a00-11eb-1fff-d965b6b0b2f7
mult(3,5)

# ╔═╡ c288930c-3a02-11eb-2292-d1c1a6be2305
function expression(x, y)
	function b(z)
		z += 1
	end
    return x+b(y)
end

# ╔═╡ eecf7e6c-3a02-11eb-0737-1d01682a154e
expression(7,32)

# ╔═╡ 55cdc246-3a16-11eb-0bff-e735ab350079
2+3

# ╔═╡ 1cf901ee-3a05-11eb-2f1d-537ec95b8d31
md" ### Εισαγωγή βιβλιοθηκών

Οι βιβλιοθήκες αποτελούν έτοιμες συλλογές προγραμμάτων, οι οποίες χρησημοποιούνται για την  ανάπτυξη κώδικα. Στην julia υπάρχουν πάνω από 4000 έτοιμες βιβλιοθήκες. Η εισαγωή τους γίνετε με το πακέτο `Pkg` και πιο συγκεκριμένα με την εντολή `Pkg.add(\"package name\")`. Στην συνέχεια μπορούμε να φορτώσουμε αυτήν την βιβλιοθήκη με την εντολή `import` ή `using`
"

# ╔═╡ dc073866-3a06-11eb-18f8-675a1021becc
md"_First, we set up a clean package environment:_"

# ╔═╡ e740003c-3a06-11eb-2873-314a09e4721b
begin
	import Pkg
	Pkg.activate(mktempdir())
end

# ╔═╡ ffe271a6-3a06-11eb-33b5-7b77820b2f31
begin
	Pkg.add("Plots")
	using Plots
end

# ╔═╡ f7617e66-3a06-11eb-2e56-33309b6ff95e
md"_Next, we add the `Plots` package to our environment, and we import it._"

# ╔═╡ fad03936-3a07-11eb-0522-3de8ea3adf21
md" ### Γραφικά

Για τα γραφικά δείτε αυτό το [notebook](http://localhost:1234/sample/Plots.jl.jl)

"

# ╔═╡ e3ef11f6-3a07-11eb-10a2-b5a18bbd921a
begin
	x1 = 1:10; y1 = rand(10); # These are the plotting data
	plot(x1, y1)
end

# ╔═╡ Cell order:
# ╟─74365de0-366c-11eb-3b9d-e5c2a7aa4623
# ╟─e4aa66fe-366d-11eb-1e75-43aa75d36ce1
# ╠═05a407e0-3989-11eb-3ae7-f512ae2aac64
# ╠═092e290e-3989-11eb-0bd0-f554a8f30c27
# ╠═23824826-3989-11eb-18ca-f7a0257420db
# ╠═2b9f4746-3989-11eb-123b-8d64e8950dc6
# ╠═315eabb0-3989-11eb-2e69-43ccbd466b97
# ╠═0e739e30-3989-11eb-28ac-a5f9d4db6875
# ╠═1fb187b6-3989-11eb-3dbf-f38cbab02188
# ╠═3c5df0ca-3989-11eb-1317-93ed66165828
# ╠═3c0f0fbe-3989-11eb-23d3-4be1a5f6f1da
# ╟─ba047e80-36fb-11eb-370e-63b2a840657c
# ╠═f8817160-366d-11eb-0eab-910ab3407baf
# ╠═27e36ad0-366e-11eb-0e06-7f57333ecaee
# ╠═2d19a550-366e-11eb-398d-579392114b5e
# ╠═319171d0-366e-11eb-2a81-d3b2509ba844
# ╠═356bece0-366e-11eb-0c2c-814c4d8af8b4
# ╠═56f4a662-399e-11eb-3129-cb977fbad0d8
# ╟─936d798e-399e-11eb-0703-a71031b8484f
# ╠═de2ffa5a-399e-11eb-3a9a-fddca0959ed0
# ╠═26be0dac-399f-11eb-359e-195b1bfc051a
# ╠═2b357622-399f-11eb-1e9e-ffd405279559
# ╠═2ebc3538-399f-11eb-09d8-67aaa105827f
# ╠═4a4f9e16-399f-11eb-0b8c-07bd683f4ef1
# ╟─41b7f750-366e-11eb-309f-6f9b31d596a2
# ╠═09aade1c-398a-11eb-3880-77fe749923e2
# ╠═3d59e5dc-398a-11eb-089b-0bf139ff18c9
# ╠═4268309c-398a-11eb-11ca-b7c4a381b730
# ╠═465afb94-398a-11eb-02e2-3f5a69734610
# ╠═4cce997c-398a-11eb-19d3-b9bd9a766c6a
# ╠═67688270-398a-11eb-0683-e9e2e895b60e
# ╠═36aeae20-399e-11eb-2ba8-6f7110f2488a
# ╟─da729fa4-398b-11eb-2c7d-47113c1bba2d
# ╠═60722250-398c-11eb-152f-f18cee0a3cd0
# ╠═deb35736-398c-11eb-07df-2374bf5a0109
# ╠═9ddbe510-398d-11eb-17c6-3f14b82bbb1d
# ╠═c4228b48-398d-11eb-2ebb-d1dd722bbe8d
# ╟─7172398c-398a-11eb-2b01-4125ac9a58d6
# ╠═537c3dde-398e-11eb-3329-43b3dd6ea39d
# ╠═5a05d324-398e-11eb-1c77-5f8e4f9358fc
# ╠═6c991186-398e-11eb-2389-d3da4357efb2
# ╠═dff3740a-399b-11eb-1dcf-c5f2aca5e7d7
# ╠═1585544e-399c-11eb-2060-5d936ba8b93b
# ╠═1a4b85d4-399c-11eb-082d-d91dfe2cd19f
# ╟─56bb1e46-39a4-11eb-17c8-4fdebda060dd
# ╟─ca5006de-3a04-11eb-0e80-81f2f839e54d
# ╠═f796c7c4-3a04-11eb-3422-b5be7f30b934
# ╟─ebb98492-399f-11eb-380a-1b309cd67d00
# ╠═29f513e8-39a0-11eb-3df9-b93523f1f516
# ╠═87ce89b2-39a1-11eb-1855-5b219db73b3c
# ╠═37d3b802-39a0-11eb-3b5c-d7d58d4a2190
# ╟─78b2d07e-39a0-11eb-33c9-7504f732f850
# ╠═ff8adbaa-39a0-11eb-1c26-898a059ff28c
# ╠═1cfd30f2-39a1-11eb-3e87-5bb5b5923db1
# ╠═a1a3426a-3a0f-11eb-395d-cd843d6e3e69
# ╠═0ab422ba-3a10-11eb-1752-434398258ae8
# ╟─aa96e07e-39a2-11eb-3f56-efd56c4ae152
# ╟─4f5931e4-39a7-11eb-06a2-6b3bd9002569
# ╠═75ad8b06-39a7-11eb-290d-b10a4c22dc2d
# ╠═7e6cbcda-39a7-11eb-0c95-d7cc6ef03a8d
# ╠═82c521f2-39a7-11eb-3d80-8b6b6eaa9909
# ╠═88d97078-39a7-11eb-2b8d-a1260d878fef
# ╠═8ea4bda8-39a7-11eb-0f38-8980a019f96f
# ╠═2c055456-3a11-11eb-003d-8d14f5752d6b
# ╟─bee26a0a-39a7-11eb-2067-dfde2eba14bd
# ╠═7abc1fc6-39a8-11eb-3833-d91f525c929a
# ╟─a29eb7f6-39a8-11eb-36d8-8161e7c414ee
# ╠═cfd5f856-39a8-11eb-2dce-07fb6647027d
# ╟─9bdea7d6-39a9-11eb-3736-b1da63e35c55
# ╠═2dd384b2-39fe-11eb-2e91-a3ea7c0bf356
# ╟─9004c882-39fe-11eb-196a-11471fa8d2c8
# ╠═ce6ac220-39a9-11eb-0156-39061c9635c2
# ╟─daf80fe8-39fe-11eb-27d6-01770e89b121
# ╠═f9fc9ebe-39fd-11eb-1825-d35f379defe5
# ╟─fd5e0dee-39fe-11eb-0f71-3180b58128c1
# ╠═dbe584cc-39ff-11eb-2f94-1db11686ec45
# ╠═eb983002-39ff-11eb-36a4-a3b10e4070fe
# ╠═fa557cb2-39ff-11eb-262c-eb8a4af59ac1
# ╠═396b68bc-3a00-11eb-1fff-d965b6b0b2f7
# ╠═c288930c-3a02-11eb-2292-d1c1a6be2305
# ╠═eecf7e6c-3a02-11eb-0737-1d01682a154e
# ╠═55cdc246-3a16-11eb-0bff-e735ab350079
# ╟─1cf901ee-3a05-11eb-2f1d-537ec95b8d31
# ╟─dc073866-3a06-11eb-18f8-675a1021becc
# ╠═e740003c-3a06-11eb-2873-314a09e4721b
# ╟─f7617e66-3a06-11eb-2e56-33309b6ff95e
# ╠═ffe271a6-3a06-11eb-33b5-7b77820b2f31
# ╟─fad03936-3a07-11eb-0522-3de8ea3adf21
# ╠═e3ef11f6-3a07-11eb-10a2-b5a18bbd921a
