class Vehicle{
  double _fuelCapacity = 0;
  double _fuelConsumption = 0;
  double _currentFuel = 0;
  Vehicle(this._fuelCapacity,this._fuelConsumption,this._currentFuel);
  set fuelCapacity(double fuelCapacity){
    if(fuelCapacity>0){
      _fuelCapacity=fuelCapacity;
    }
    else{
      print( 'invalid fuel capacity');
    }
  }
   double get fuelCapacity=>_fuelCapacity;
  set  fuelConsumption (double fuelConsumption){
    if( fuelConsumption>0){
      _fuelConsumption= fuelConsumption;
    }
    else{
      print( 'invalid  fuel consumption');
    }
  }
  double get fuelConsumption=>_fuelConsumption;
  set  currentFuel (double currentFuel){
    if( currentFuel >0){
      _currentFuel = currentFuel;
    }
    else{
      print( 'invalid   current fuel');
    }
  }
  double get currentFuel =>_currentFuel ;

  double computeFuel(double distance){
    return distance*fuelConsumption;
  }
  bool canComplete(double distance){
    return computeFuel(distance) <= _currentFuel;
  }
  String get type => "Vehicle";


}
class Car extends Vehicle{
  bool _acon=false;
  Car(this._acon,super._fuelCapacity,super._fuelConsumption,super._currentFuel);
  set acon(bool acon){
    _acon=acon;
  }
  @override
  double computeFuel(double distance){
     double baseFuel=super.computeFuel(distance);
     if(_acon){
       baseFuel=baseFuel*1.1;
     }
     return baseFuel;
  }
  @override
  String get type => "car";
  }
  class Trunk extends Vehicle{
  double _loadWeight=0;
  Trunk(this._loadWeight,super._fuelCapacity,super._fuelConsumption,super._currentFuel);
  set loadWeight(loadWeight){
    if(loadWeight>0){
      _loadWeight=loadWeight;
    }
    else{
      print( 'invalid load weight');
    }
  }
  @override
  double computeFuel(double distance){
    double baseFuel=super.computeFuel(distance);
    double extra = _loadWeight*0.05;
    return baseFuel + extra;
  }
  @override

  bool canComplete(double distance){
    if(_loadWeight>100){
      return false;
    }
    return super.canComplete(distance);

  }
  @override

  String get type => "Trunk";

  }
  void main() {
    List<Vehicle>vehicles = [Car(true, 50, 0.2, 20)
      , Car(false, 45, 0.18, 30)
      , Trunk(120, 0.5, 60, 80),
      Trunk(90, 0.5, 60, 150)];

    List<double>tripdistances = [50, 30];
    double totalDistance = tripdistances.reduce((a, b) => a + b);
    for(var v in vehicles){
      double  totalFuelNeeded=0;
      for(var d in tripdistances){
         totalFuelNeeded=totalFuelNeeded+v.computeFuel(d);
      }
      print( v.type);
      if(v.canComplete( totalDistance)){
        print( 'can complete the trip');
      }
      else{
        print( 'cannot complete the trip');
      }
    }

  }




