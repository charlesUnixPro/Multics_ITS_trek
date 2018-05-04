bound_strek : bound_strek.archive
	dl bound_trek
	bind bound_trek

bound_strek.archive : trek trek_subr bound_strek.bind
	dl bound_trek.archive
	ac ad bound_trek trek trek_subr
	ac a bound_trek bound_strek.bind

trek : trek.fortran
	ft -ansi77 -fold trek

trek_subr: trek_subr.pl1
	pl1 trek_subr

