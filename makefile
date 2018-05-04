bound_trek : bound_trek.archive
	dl bound_trek
	bind bound_trek

bound_trek.archive : trek trek_subr bound_trek.bind
	dl bound_trek.archive
	ac ad bound_trek trek trek_subr bound_trek.bind

trek : trek.fortran
	ft -ansi77 -fold trek

trek_subr: trek_subr.pl1
	pl1 trek_subr

