//
//  TabBar.swift
//  DesignCodeCourse (iOS)
//
//  Created by Thomas Prezioso on 10/5/20.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            NavigationView {
                CoursesView()
            }
            .tabItem {
                    Image(systemName: "book.closed")
                    Text("Courses")
                }
            NavigationView {
                CourseList()
            }
            .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("Tutorials")
                }
            NavigationView {
                CoursesView()
            }
            .tabItem {
                    Image(systemName: "tv")
                    Text("Livestreams")
                }
            NavigationView {
                CoursesView()
            }
            .tabItem {
                    Image(systemName: "mail.stack")
                    Text("Certificates")
                }
            NavigationView {
                CoursesView()
            }
            .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
