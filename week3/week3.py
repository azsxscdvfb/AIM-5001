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
print(Price)                                        #print every attribute
print(Maintenance_cost)
print(Number_of_passengers)
print(Number_of_doors)
print(Luggage_capacity)
print(Safety_rating)
print(Classification_of_vehicle)

#task2

MedPriceIndex = []                                  #store the index values
                                                    #index value count from 0

i=0
for row in list:
    if(row[0] =='med'):
        MedPriceIndex.append(i)
        print(str(i)+":"+str(row))
    i+=1
print(MedPriceIndex)

#task3
NoPofMedPrice = []                                  #according to the index values which we find in last task, we can find it in NoP list
for i in MedPriceIndex:
    NoPofMedPrice.append(Number_of_passengers[i])
print(NoPofMedPrice)

#task4
PhMnlIndex = []                                     #store the index value
for i, val in enumerate(Price):                     #search the data according to the
    if(Price[i] == 'high' and Maintenance_cost[i] != 'low'):
        PhMnlIndex.append(i)
        print(str(i)+":",list[i])
print(PhMnlIndex)

#tak5
class CarData:
    CarCount = 0
    def __init__(self,
                 Price,
                 Maintenance_cost,
                 Number_of_doors,
                 Number_of_passengers,
                 Luggage_capacity,
                 Safety_rating,
                 Classification_of_vehicle
                 ):
        self.Price = Price
        self.Maintenance_cost = Maintenance_cost
        self.Number_of_doors = Number_of_doors
        self.Number_of_passengers = Number_of_passengers
        self.Luggage_capacity = Luggage_capacity
        self.Safety_rating = Safety_rating
        self.Classification_of_vehicle = Classification_of_vehicle
        self.uniqueId = self.CarCount
        CarData.CarCount += 1

    def displayCount(self):
        print()

    def displayCar(self):
        print("UniqueId:", self.uniqueId,
              "Price:", self.Price,
              ",Maintenance_cost:", self.Maintenance_cost,
              "Number_of_doors:", self.Number_of_doors,
              "Number_of_passengers:", self.Number_of_passengers,
              "Luggage_capacity:", self.Luggage_capacity,
              "Safety_rating:", self.Safety_rating,
              "Classification_of_vehicle:", self.Classification_of_vehicle
              )

Car = list()
for i in list:
    Car.append(CarData(i[0],i[1],i[2],i[3],i[4],i[5],i[6]))
NoD2Lb = []
for i in Car:
    if(i.Number_of_doors== '2' and i.Luggage_capacity=='big'):
        NoD2Lb.append(i.uniqueId)
        print(i.displayCar())