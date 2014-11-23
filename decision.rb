plane_cost = 58.10 * 0.3  # DCA => BOS
plane_travel = 81 + 90 + 45 # Flight time + checkin time + arrival at airport to final destination
plane_time = plane_travel * 0.3  
plane_transfers = 2 # Transfers departing and arriving at airport 
plane_conv = 5 - plane_transfers * 0.2
plane_prod = 5 * 0.2

plane_result = plane_time+plane_cost-plane_conv-plane_prod

train_cost = 79 * 0.3 #WAS => BOS 
train_travel = 470 + 15 + 15 # Travel time + station arrivals and departures 
train_time = train_travel * 0.3
train_transfers = 2
train_conv = 5-train_transfers * 0.2
train_prod = 5 * 0.2

train_result = train_time+train_cost-train_conv-train_prod

car_travel_cost = 441/30 *3.5 #441 Miles, 30 MPG, $3.50/gallon
car_cost = car_travel_cost * 0.3 
car_time = 480 * 0.3 #7 hours 
car_conv = 5 * 0.2 # no transfers
car_prod = 0 * 0.2

car_result = car_time+car_cost-car_conv-car_prod

bus_cost = 49 * 0.3 # WAS => BOS 1 transfer enroute 
bus_travel= 560 + 10 + 10 # travel time + station arrivals and departures 
bus_time =  bus_travel * 0.3
bus_transfers = 3
bus_conv = 5- bus_transfers * 0.2
bus_prod = 4 * 0.2

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
		print "train is best"
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


