function d_result(){

if (plane_result < train_result && plane_result < car_result && plane_result < bus_result)
{
	  	console.log( "Flying will be the best choice");
}
if (train_result < plane_result && train_result < car_result && train_result < bus_result){
		console.log( "Taking the train will best the best choice");
}
if (car_result < train_result && car_result < plane_result && car_result < bus_result){
		console.log( "Driving will be the best choice");
}
if (bus_result < train_result && bus_result < car_result && bus_result < plane_result) {
		cosnole.log( "Taking the bus will be the best choice");
	}
}

