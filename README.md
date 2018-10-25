# Doctor-Patient

Il y a une DB existante dans le dossier /db pour faciliter les corrections. Si vous souhaitez tester les rails db:migrate & rails db:seed, veuillez supprimer la DB.

## Instalation 
```
$ cd Application
$ bundle install
```

## :v: Tables Creation :v: :

1. Specialty
	 - id(of course)
	 - name
2. Patient
	 - id(of course)
	 - first_name
	 - last_name
	 - city_id
3. middle
	 - id(of course)
	 - doctor_id
	 - specialty_id
4. Doctor
	 - id(of course)
	 - first_name
	 - last_name
	 - postal_code
	 - city_id
5. City
	 - id(of course)
	 - name
6. Appointment
	 - id(of course)
	 - date
	 - doctor_id
	 - patient_id
	 - city_id


## Fucking_Lovely_Team :frog: :

Noms | Pseudo Slack
------------ | -------------
Pauline Labaisse | @Pauline Labaisse :baby_chick:
Margaux Cortier | @Margaux Crt :penguin:
Irina Penkovskaia | @Ira P. :octocat:
Max de Ponfilly | @Max :tiger:
Hélène Martin | @Helene Cbm :panda_face:
Victor Gabella | @Chartie :bear:

*Enjoy*