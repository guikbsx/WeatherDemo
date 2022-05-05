//
//  LoadingView.swift
//  WeatherDemo
//
//  Created by Guillaume Bisiaux on 05/05/2022.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
			.progressViewStyle(CircularProgressViewStyle(tint: .white))
			.frame(width: .infinity, height: .infinity)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
			.preferredColorScheme(.dark)
    }
}
