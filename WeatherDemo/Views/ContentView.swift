//
//  ContentView.swift
//  WeatherDemo
//
//  Created by Guillaume Bisiaux on 05/05/2022.
//

import SwiftUI

struct ContentView: View {
	
	@StateObject var locationManager = LocationManager()
	
    var body: some View {
		VStack {
			if let location = locationManager.location {
				Text("Your coordinate are: \(location.longitude), \(location.latitude)")
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
