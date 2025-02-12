// MAKE SURE THIS FILE IS INCLUDED IN THE .DME BEOFRE THE BASE JOB FILES!!

// This list will store mappings of original job type paths to our override paths
// For example: "/datum/job/roguetown/fisher" -> "/datum/job/modular/roguetown/fisher"
GLOBAL_LIST_EMPTY(job_overrides)

/proc/load_job_overrides()
	// Get all subtypes of /datum/job - this includes both original and our override jobs
	var/list/override_types = subtypesof(/datum/job)

	// Iterate through all job types
	for(var/job_type in override_types)
		var/datum/job/J = job_type
		// Check if this job type is from our modular folder by looking at its path string
		if(findtext("[job_type]", "modular/stonekeep/code/jobs"))
			// If it is one of our override jobs, find what original job it's meant to override
			var/orig_path = get_original_job_path("[job_type]")
			if(orig_path)
				// Add mapping of original job -> override job to our global list
				GLOB.job_overrides[orig_path] = job_type

// Helper proc that finds the original job type that an override is meant to replace
/proc/get_original_job_path(override_path)
	// Get just the job name from the full path (e.g. "fisher" from "/datum/job/modular/roguetown/fisher")
	var/job_name = copytext(override_path, findlasttext(override_path, "/") + 1)

	// Look through all job types for one with matching name that isn't from modular folder
	for(var/datum/job/J in subtypesof(/datum/job))
		if(findtext("[J]", job_name) && !findtext("[J]", "modular"))
			return J
	return null

// Hook into the job subsystem's initialization
// This is where we actually perform the replacement of original jobs with our overrides
/datum/controller/subsystem/job/Initialize(timeofday)
	load_job_overrides()

	// Go through all jobs that would normally be created
	for(var/J in occupations)
		var/datum/job/job = J
		// Check if we have an override for this job type
		var/override_type = GLOB.job_overrides[job.type]
		if(override_type)
			// If we do have an override:
			// 1. Create the override job datum
			// 2. Replace the original job in the occupations list
			// 3. Delete the original job datum
			var/datum/job/override_job = new override_type()
			occupations[occupations.Find(job)] = override_job
			qdel(job)

	return ..()
