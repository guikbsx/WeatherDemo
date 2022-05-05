//
//  WelcomeView.swift
//  WeatherDemo
//
//  Created by Guillaume Bisiaux on 05/05/2022.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
	
	@EnvironmentObject var locationmanager: LocationManager
	
    var body: some View {
		VStack {
			VStack(spacing: 20) {
				Text("Welcome to the Weather App")
					.bold().font(.title)
				Text("Please share your current location to get the weather in your area")
					.padding()
			}
			.multilineTextAlignment(.center)
			.padding()
			
			LocationButton(.shareCurrentLocation) {
				locationmanager.requestLocation()
			}
			.cornerRadius(30)
			.symbolVariant(.fill)
			.foregroundColor(.white)
		}
		.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
