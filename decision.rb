#weights of variables
cost_weight = 0.3
time_weight = 0.3
conv_weight = 0.2
prod_weight = 0.2

plane_cost = 58.10 * cost_weight  # DCA => BOS
plane_travel = 81 + 90 + 45 # Flight time + checkin time + arrival at airport to final destination
plane_time = plane_travel * time_weight  
plane_transfers = 2 # Transfers departing and arriving at airport 
plane_conv = 10 - plane_transfers * conv_weight
plane_prod = 10 * prod_weight

plane_result = plane_time+plane_cost-plane_conv-plane_prod

train_cost = 79 * cost_weight # WAS => BOS 
train_travel = 470 + 15 + 15 # Travel time + station arrivals and departures 
train_time = train_travel * time_weight
train_transfers = 2
train_conv = 10-train_transfers * conv_weight
train_prod = 10 * prod_weight

train_result = train_time+train_cost-train_conv-train_prod

gas_price = 3.5  #gas $3.5/gallon
mileage = 441 # miles
MPG = 30 # MPG


car_travel_cost = mileage/MPG * gas_price 
car_cost = car_travel_cost * cost_weight
car_time = 480 * time_weight # 7 hours 
car_conv = 10 * conv_weight # no transfers
car_prod = 0 * prod_weight

car_result = car_time+car_cost-car_conv-car_prod

bus_cost = 49 * cost_weight # WAS => BOS 1 transfer enroute 
bus_travel= 560 + 10 + 10 # travel time + station arrivals and departures 
bus_time =  bus_travel * time_weight
bus_transfers = 3
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
puts plane_result
puts train_result
puts car_result
puts bus_result



