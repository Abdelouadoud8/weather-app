import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp2_exercice02_weather/model/weathermodel.dart';
import 'package:tp2_exercice02_weather/services/network.dart';

class WeatherCubit extends Cubit<WeatherModel>{
  WeatherModel weatherModel = WeatherModel();

  WeatherCubit() : super(WeatherModel());

  Future<WeatherModel> doSearch (String cityName) async {
    weatherModel = await Network.getWeatherForecastData(cityName: cityName);
    emit(weatherModel);
    return weatherModel;
  }

}