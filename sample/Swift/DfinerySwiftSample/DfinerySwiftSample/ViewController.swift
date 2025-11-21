//
//  ViewController.swift
//  DfinerySwiftSample
//
//  Created by Jimmy.강세훈 on 10/27/25.
//

import UIKit
import DfinerySDK

class ViewController: UIViewController {
    
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
    private let scroll = UIScrollView()
    private let stack  = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground

        stack.axis = .vertical
        stack.spacing = 16

        view.addSubview(scroll)
        scroll.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scroll.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            scroll.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])

        scroll.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: scroll.topAnchor, constant: 16),
            stack.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            stack.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            stack.widthAnchor.constraint(equalTo: scroll.widthAnchor)
        ])

        addSection("LogEvent") {
            self.button("Login") { _ in
                print("Login")
                self.dfineryLogin()
            }
            self.button("Purchase") { _ in
                print("Purchase")
                self.dfineryPurchase()
            }
            self.button("Custom Event") { _ in
                print("Custom Event")
                self.dfineryCustomEvent()
            }
        }

        addSection("UserProfile") {
            self.button("setSingleUserProfile") { _ in
                print("setSingleUserProfile")
                self.dfinerySetSingleUserProfile()
            }
            self.button("setMultipleUserProfile") { _ in
                print("setMultipleUserProfile")
                self.dfinerySetMultipleUserProfiles()
            }
        }

        addSection("Identity") {
            self.button("setSingleIdentity") { _ in
                print("setSingleIdentity")
                self.dfinerySetSingleIdentity()
            }
            self.button("setMultipleIdentity") { _ in
                print("setMultipleIdentity")
                self.dfinerySetMultipleIdentities()
            }
        }

        addSection("Push") {
            self.button("requestPushPermission") { _ in
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

    private func addSection(_ title: String, builder: () -> Void) {
        let label = UILabel()
        label.text = title
        label.font = .systemFont(ofSize: 28, weight: .bold)
        stack.addArrangedSubview(label)
        builder()
    }

    @discardableResult
    private func button(_ title: String, action: @escaping UIActionHandler) -> UIButton {
        let b = UIButton(type: .system, primaryAction: UIAction(handler: action))
        if #available(iOS 15.0, *) {
            var config = UIButton.Configuration.filled()
            config.title = title
            config.baseBackgroundColor = .systemPurple
            config.baseForegroundColor = .white
            config.cornerStyle = .capsule
            config.contentInsets = NSDirectionalEdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20)
            b.configuration = config
        } else {
            b.setTitle(title, for: .normal)
            b.backgroundColor = .systemPurple
            b.setTitleColor(.white, for: .normal)
            b.layer.cornerRadius = 24
            b.contentEdgeInsets = UIEdgeInsets(top: 14, left: 20, bottom: 14, right: 20)
        }
        b.heightAnchor.constraint(greaterThanOrEqualToConstant: 48).isActive = true
        stack.addArrangedSubview(b)
        return b
    }


}

