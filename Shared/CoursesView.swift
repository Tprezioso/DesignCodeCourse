//
//  CoursesView.swift
//  DesignCodeCourse
//
//  Created by Thomas Prezioso on 9/11/20.
//

import SwiftUI

struct CoursesView: View {
    @State var show = false
    @Namespace var namespace
    var body: some View {
        ZStack {
            CourseItem()
                .matchedGeometryEffect(id: "Card", in: namespace, isSource: !show)
                .frame(width: 335, height:250)
            if show {
                ScrollView {
                    CourseItem()
                        .matchedGeometryEffect(id: "Card", in: namespace)
                        .frame(height: 300)
                    VStack {
                        ForEach(0 ..< 20) { item in
                            CourseRow()
                        }
                    }
                    .padding()
                }
                .ignoresSafeArea([.all])
                .transition(.opacity)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
                
            }
        }
    }
}

struct CoursesView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesView()
    }
}
