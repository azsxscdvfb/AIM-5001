import csv
#task1
Price = []
Maintenance_cost = []
Number_of_doors = []
Number_of_passengers = []
Luggage_capacity = []
Safety_rating = []
Classification_of_vehicle = []
list = []                                           #store the whole file
with open('cars-sample35.txt') as csvfile:          #read file and store data
    readCSV = csv.reader(csvfile)
    for row in readCSV:
        list.append(row)
        Price.append(row[0])
        Maintenance_cost.append(row[1])
        Number_of_doors.append(row[2])
        Number_of_passengers.append(row[3])
        Luggage_capacity.append(row[4])
        Safety_rating.append(row[5])
        Classification_of_vehicle.append(row[6])

MedPriceIndex = [i for i, val in enumerate(Price)  if val =='med' ]
print(MedPriceIndex)


#task2
NoPofMedPrice = [Number_of_passengers[i] for i in MedPriceIndex]
print(NoPofMedPrice)

#task3
PhMnlIndex = [i for i, _ in enumerate(Price) if Price[i] == 'high' and Maintenance_cost[i] != 'low']
print(PhMnlIndex)

#task4
nlist = [ [1, 2, 3], ['A', 'B', 'C'], [4, 5], ['D', 'E'] ]
flist = [y for x in nlist for y in x]
print(flist)

#task5
def makedict(mylist, x):
    if(x> len(list)):
        raise Exception("Invalid length!", x)
    elif(len(mylist) == 0):
        raise Exception("Invalid list!")
    newdict = { ('A' + str(i)): mylist[i] for i in range(x)}
    return(newdict)

d1 = makedict(Price, 5)
print(d1)
#d2 = makedict(Price, 1000)

#task6
Price7Dict = makedict(Price, 7)
Luggage7Dict = makedict(Luggage_capacity, 7)
print("A4 Price = ", Price7Dict[1], ",A4 Luggage Capacity =", Luggage7Dict['A4'])