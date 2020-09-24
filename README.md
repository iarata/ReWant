# ReWant
creating a job app where people can see and apply for open positions from companies. **Part of Wantedly, Inc Assignment** 

## Wantedly APIs
Jobs list:
  - https://www.wantedly.com/api/v1/projects?q={{ searchKeyWord: String }}&page={{ pageNumbers: Int }}
  - https://www.wantedly.com/api/v1/projects/{{ projectsID }}


## - Todo List -
- [ ] Create sections of the app: 1.Home, 2.Search, 3.Status, 4.Profile
- [ ] UI of the app:
	- [ ] Home - list of jobs UI
		- [ ] Job details
	- [ ] Search - search UI + pre-defined keywords UI
	- [ ] Status of applied jobs UI
		- [ ] Applied jobs
		- [ ] Closed jobs
		- [ ] Currently proccessing jobs
		- [ ] Rejected jobs
		- [ ] All
		- [ ] Recent alls
	- [ ] Profile UI
		- [ ] projects
		- [ ] about me
		- [ ] profile pic
- [ ] Get list of jobs using Wantedly APIs
	- [ ] jobs in next pages as well
- [ ] Save data of profile in userdefaults
- [ ] Save data of applied jobs in userdefaults
