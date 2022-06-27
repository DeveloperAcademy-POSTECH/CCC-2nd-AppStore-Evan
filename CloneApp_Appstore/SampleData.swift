//
//  SampleData.swift
//  CloneApp_Appstore
//
//  Created by 김예훈 on 2022/06/27.
//

import Foundation

class AppInfoData {
    var name: String
    var subLabel: String
    var iconName: String
    
    init(name: String, subLabel: String, iconName: String) {
        self.name = name
        self.subLabel = subLabel
        self.iconName = iconName
    }
}

extension AppInfoData {
    static let samples = [
        AppInfoData(name: "타입스", subLabel: "성격 유형 플레이 그라운드", iconName: ""),
        AppInfoData(name: "배달의 민족", subLabel: "대한민국 1등 배달앱", iconName: ""),
        AppInfoData(name: "YouTube", subLabel: "동영상과 음악을 즐기고 공유하세요", iconName: ""),
        AppInfoData(name: "올리브영", subLabel: "대한민국 No.1 헬스&뷰티 스토어", iconName: ""),
        AppInfoData(name: "TikTok 틱톡", subLabel: "15초만에 사로잡는 재밌는 영상이 가득한 틱톡!", iconName: ""),
        AppInfoData(name: "당근마켓", subLabel: "당신 근처의 동네 커뮤니티", iconName: ""),
        AppInfoData(name: "카카오톡 kaKaoTalk", subLabel: "모든 연결의 시작, 카카오톡", iconName: ""),
        AppInfoData(name: "야놀자", subLabel: "여행의 모든 것, 한 번에 쉽게", iconName: ""),
    ]
}
