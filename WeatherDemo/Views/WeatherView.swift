//
//  WeatherView.swift
//  WeatherDemo
//
//  Created by Guillaume Bisiaux on 05/05/2022.
//

import SwiftUI

struct WeatherView: View {
	var weather: ResponseBody
	
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
		WeatherView(weather: previewWeather)
    }
}
