//
//  ContentView.swift
//  DfinerySwiftUISample
//
//  Created by Jimmy.강세훈 on 10/27/25.
//

import SwiftUI
import DfinerySDK
import UserNotifications

struct ContentView: View {
    //MARK: - Dfinery
    private func dfineryLogin() {
        Dfinery.shared().logEvent(DFEvent.LOGIN)
    }
    private func dfineryPurchase() {
        let item_1: [String: Any] = [
            DFEventProperty.ITEM_ID: "상품번호",
            DFEventProperty.ITEM_NAME: "상품이름",
            DFEventProperty.ITEM_PRICE: 5000.0,
            DFEventProperty.ITEM_DISCOUNT: 500.0,
            DFEventProperty.ITEM_QUANTITY: 5,
            DFEventProperty.ITEM_CATEGORY1: "식품",
            DFEventProperty.ITEM_CATEGORY2: "과자"

        ]
        
        let items: [[String: Any]] = [item_1]
        
        Dfinery.shared().logEvent(
            DFEvent.PURCHASE,
            properties: [
                DFEventProperty.ORDER_ID: "주문번호",
                DFEventProperty.PAYMENT_METHOD: "BankTransfer",
                DFEventProperty.TOTAL_PURCHASE_AMOUNT: 25500.0,
                DFEventProperty.DELIVERY_CHARGE: 3000.0,
                DFEventProperty.DISCOUNT: 0.0,
                DFEventProperty.ITEMS: items
            ]
        )
    }
    private func dfineryCustomEvent() {
        Dfinery.shared().logEvent(
            "custom_event",
            properties: [
                "custom_property_1": 34000,
                "custom_property_2": 42.195,
                "custom_property_3": "Seoul",
                "custom_property_4": true,
                "custom_property_5": Date(),
                "custom_property_6": "1991-01-01",
                "custom_property_7": [20, 30, 40],
                "custom_property_8": [1.1, 1.2, 1.3],
                "custom_property_9": ["Hello", "World"]
            ]
        )
    }
    
    private func dfinerySetSingleUserProfile() {
        Dfinery.shared().setUserProfile(key: DFUserProfile.NAME, value: "Tester")
    }
    private func dfinerySetMultipleUserProfiles() {
        Dfinery.shared().set(userProfiles: [
            DFUserProfile.GENDER: "Female",
            DFUserProfile.BIRTH: "1999-01-01",
            DFUserProfile.MEMBERSHIP: "VIP",
            DFUserProfile.PUSH_ADS_OPTIN: true,
            DFUserProfile.SMS_ADS_OPTIN: false,
            DFUserProfile.KAKAO_ADS_OPTIN: true,
            DFUserProfile.PUSH_NIGHT_ADS_OPTIN: false,
            "custom_user_profile_1": 34000,
            "custom_user_profile_2": 42.195,
            "custom_user_profile_3": Date(),
            "custom_user_profile_4": [20, 30],
            "custom_user_profile_5": [1.1, 1.2],
            "custom_user_profile_6": ["Hello", "World"]
        ])
    }
    
    private func dfinerySetSingleIdentity() {
        Dfinery.shared().setIdentity(key: DFIdentity.EXTERNAL_ID, value: "user_a1b2c3d4")
    }
    private func dfinerySetMultipleIdentities() {
        Dfinery.shared().set(identities: [
            DFIdentity.EMAIL: "sample.user@example.com",
            DFIdentity.PHONE_NO: "821012345678",
            DFIdentity.KAKAO_USER_ID: "kakao_u98765",
            DFIdentity.LINE_USER_ID: "line_i10293"
        ])
    }

    //MARK: - UI
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("LogEvent").font(.title).bold()
                Group {
                    Button("Login") {
                        print("Login")
                        dfineryLogin()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())
                    
                    Button("Purchase") {
                        print("Purchase")
                        dfineryPurchase()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())
                    
                    Button("Custom Event") {
                        print("Custom Event")
                        dfineryCustomEvent()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())
                }
                Text("UserProfile").font(.title).bold()
                Group {
                    Button("setSingleUserProfile") {
                        print("setUserProfile")
                        dfinerySetSingleUserProfile()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())
                    
                    Button("setMultipleUserProfile") {
                        print("setMultipleUserProfile")
                        dfinerySetMultipleUserProfiles()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())
                    
                }
                Text("Identity").font(.title).bold()
                Group {
                    Button("setSingleIdentity") {
                        print("setSingleIdentity")
                        dfinerySetSingleIdentity()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())
                    
                    Button("setMultipleIdentity") {
                        print("setMultipleIdentity")
                        dfinerySetMultipleIdentities()
                    }
                    .buttonStyle(.borderedProminent).tint(.purple).clipShape(Capsule())
                    
                }
                
            }
            .padding(20)
        }
        //MARK: - push auth
        .onAppear {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, err in
               if granted {
                   DispatchQueue.main.async {
                       UIApplication.shared.registerForRemoteNotifications()
                   }
               }
            }
        }
    }
}
