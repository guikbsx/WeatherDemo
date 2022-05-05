//
//  ContentView.swift
//  WeatherDemo
//
//  Created by Guillaume Bisiaux on 05/05/2022.
//

import SwiftUI

struct ContentView: View {
	
	@StateObject var locationManager = LocationManager()
	var weatherManager = WeatherManager()
	@State var weather: ResponseBody?
	
    var body: some View {
		VStack {
			if let location = locationManager.location {
				if let weather = weather {
					WeatherView(weather: weather)
				} else {
					LoadingView()
						.task {
							do {
								weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
							} catch {
								print("error getting weather: \(error)")
							}
						}
				}
			} else {
				if locationManager.isLoading {
					LoadingView()
						
				} else {
					WelcomeView()
						.environmentObject(locationManager)
				}
			}
		}
		.preferredColorScheme(.dark)
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
