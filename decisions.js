
cost_weight = 0.3
time_weight = 0.3
conv_weight = 0.2
prod_weight = 0.2

p_cost = 58.10
t_cost = 79
b_cost = 49


	flight_time = 81
	checkin_time = 90
	arrival_time = 45

p_time = flight_time + checkin_time + arrival_time
p_transfers =2

plane_cost = p_cost * cost_weight  
plane_travel = p_time
plane_time = plane_travel * time_weight  
plane_transfers = p_transfers 
plane_conv = 10 - plane_transfers * conv_weight
plane_prod = 10 * prod_weight

plane_result = plane_time+plane_cost-plane_conv-plane_prod


t_travel = 470

train_cost = t_cost * cost_weight 
train_travel = t_travel + 15 + 15
train_time = train_travel * time_weight
train_transfers = 2
train_conv = 10-train_transfers * conv_weight
train_prod = 10 * prod_weight

train_result = train_time+train_cost-train_conv-train_prod

gas_price = 3000.5  #gas $3.5/gallon
mileage = 441 # miles
MPG = 30 # MPG

c_time= 480

car_travel_cost = mileage/MPG * gas_price 
car_cost = car_travel_cost * cost_weight
car_time = c_time * time_weight 
car_conv = 10 * conv_weight 
car_prod = 0 * prod_weight

car_result = car_time+car_cost-car_conv-car_prod

b_time = 560 + 10 + 10
b_transfers = 3
bus_cost = b_cost * cost_weight 
bus_travel= b_time # travel time + station arrivals and departures 
bus_time =  bus_travel * time_weight
bus_transfers = b_transfers
bus_conv = 5- bus_transfers * conv_weight
bus_prod = 5 * prod_weight

bus_result = bus_time+bus_cost-bus_conv-bus_prod

if (plane_result < train_result)
if (plane_result < car_result)
if (plane_result < bus_result)
	then
		print "Flying will be the best choice"
	end
end 
end 
if (train_result < plane_result)
if (train_result < car_result)
if (train_result < bus_result)
	then 
		print "Taking the train will best the best choice"
	end
end
end

if (car_result < train_result)
if (car_result < plane_result)
if (car_result < bus_result)
	then
		print "Driving will be the best choice"
	end
end 
end 

if (bus_result < train_result)
if (bus_result < car_result)
if (bus_result < plane_result)
	then
		print "Taking the bus will be the best choice"
	end
end 
end 

  
  
