# Piscine datascience: data engineer

In the next two modules, you will see the role of a data engineer.
This second step is important to understand. The data engineer "cleans" the data and
transforms it in order to have data ready to be analyzed by analysts/data scientists.
The next module involves data cleansing. This second step is important to under-
stand the data engineer "cleans" the data and transforms it. The objective is to have
data ready to be analyzed by analysts/data scientists.
We are at the end of February 2022, it’s your first day in a company selling items on
the Internet. Before leaving on a trip your boss gives you the sales of the last 4 months.
You will have to exploit them and propose solutions to increase the turnover of the com-
pany.

## ex00

In the first exercice we have to create a database with the following features:

- based on postgresql
- the username is our 42 student login (macrespo)
- the name of the db must be: piscineds
- the password is: "mysecretpassword"

For convenience i choose to use docker to run my db

To test this first exercice just run `docker compose up --build` from the root of this project

then you can connect the container like this for example: `docker exec -it db bash`
and then connect to psql shell with this command:  `psql -U macrespo -d piscineds -h localhost -W`

## ex01

In this exercice we have to add a db visualiser to our project. I choose adminer.
Like in the first exercice you can run the docker compose from root of the dir ( or from ex01 if you only want feature of this exercice)  

Then you can access adminer from your host machine at [localhost:8080](localhost:8080)


## ex02

This time we have to take a csv file and import it in the db. (you can find the ressource given by the subject [here](https://cdn.intra.42.fr/document/document/25745/subject.zip))  
To test this exercice log in to the db container and then to the db with: `psql -U macrespo -d piscineds -h localhost -W`
When your connected to psql shell just run `\i /opt/ex02/create_table.sql`

And the db while be filled with client data from december 2022 !!


## ex03

Its the same as ex02 except one detail, this time we have to import all csv from customer folder (provided by the subject)  
To facilitate the import i made a more generic sql script et and little bash script (in the container they are located in /opt/ex03) you just need to log in to the db container  
and then execute the script it will fill the db will all customers datas!


## ex04

This is the last one! In this exercice we have to import the item csv file to our db  
They are some little trap in this one like null content, number overflow we have to try and retry  
until we handle all the exception. One more time i made a little sql script who handle all problems correctly.
