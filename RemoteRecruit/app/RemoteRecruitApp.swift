//
//  RemoteRecruitApp.swift
//  RemoteRecruit
//
//  Created by Alex Antony Vijay J on 15/06/26.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct RemoteRecruitApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var viewModel = JobListViewModel(webService: JobsWebService(urlString: JobConstant.JobList.url))
    
    var body: some Scene {
        WindowGroup {
            JobListView(viewModel: viewModel)
        }
    }
    
}
