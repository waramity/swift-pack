//
//  PathLineView.swift
//  swift-pack
//
//  Created by nattapol wattana on 23/8/2566 BE.
//

import SwiftUI

struct PathShapeView: View {
    var body: some View {
        LineView()
        ZStack {
            PieChart(startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 120))
                .fill(Color.red)
            
            PieChart(startAngle: Angle(degrees: 120), endAngle: Angle(degrees: 240))
                .fill(Color.green)
            
            PieChart(startAngle: Angle(degrees: 240), endAngle: Angle(degrees: 360))
                .fill(Color.blue)
        }
        .frame(width: 200, height: 200)
        DonutChart()
    }
}

struct LineView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 50, y: 50))
            path.addLine(to: CGPoint(x: 250, y: 50))
        }
        .stroke(Color.blue, lineWidth: 2)
    }
}

struct PieChart: Shape {
    var startAngle: Angle
    var endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        path.move(to: center)
        path.addArc(center: center, radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: false)
        path.closeSubpath()
        return path
    }
}

struct DonutChart: View {
    var body: some View {
        ZStack {
            PieChart(startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 120))
                .fill(Color.red)
            
            PieChart(startAngle: Angle(degrees: 120), endAngle: Angle(degrees: 240))
                .fill(Color.green)
            
            PieChart(startAngle: Angle(degrees: 240), endAngle: Angle(degrees: 360))
                .fill(Color.blue)
            
            Circle()
                .frame(width: 80, height: 80)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 200)
    }
}
