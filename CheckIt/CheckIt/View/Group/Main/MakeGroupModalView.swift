//
//  MakeGroupModalView.swift
//  CheckIt
//
//  Created by 황예리 on 2023/01/18.
//

import SwiftUI

struct MakeGroupModalView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var groupStores: GroupStore
    
    @State private var groupName: String = ""
    @State private var groupDescription: String = ""
    @State private var isJoined: Bool = false
    @State private var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Text("동아리 개설하기")
                .font(.system(size: 24, weight: .bold))
            
            // MARK: - 동아리 이미지 추가하는 버튼
            Button {
                isJoined.toggle()
            } label: {
                ZStack {
                    Circle().fill(Color.myLightGray)
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                    
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
            }
            
            Text("동아리 기본정보")
                .font(.system(size: 17, weight: .regular))
            
            // MARK: - 동아리 이름 텍스트필드
            CustomTextField(
                text: $groupName,
                placeholder: "동아리 이름을 입력해주세요! (필수)",
                maximumCount: 12)
            .font(.system(size: 13, weight: .regular))
            
            // MARK: - 동아리 상세 내용 텍스트필드
            CustomTextField(
                text: $groupDescription,
                placeholder: "동아리의 상세 내용을 적어주세요. (필수)",
                maximumCount: 30)
            .font(.system(size: 14, weight: .regular))
            
            // MARK: - 동아리 개설하기 버튼
            Button {
                isJoined.toggle()
                dismiss()
                
                let group = Group(id: UUID().uuidString,
                                  name: groupName,
                                  invitationCode: UUID().uuidString,
                                  image: "example",
                                  hostID: "Dpcvu3OOAUuq3ccDhBcW",
                                  description: groupDescription,
                                  scheduleID: [])
                Task {
                    await groupStores.createGroup("Dpcvu3OOAUuq3ccDhBcW", group: group)
                }
                
            } label: {
                Text("동아리 개설하기")
                    .modifier(GruopCustomButtonModifier())
            }
            .disabled(groupName.isEmpty || groupDescription.isEmpty)
        }
        .padding(40)
        .presentationDragIndicator(.visible)
    }
}

struct MakeGroupModalView_Previews: PreviewProvider {
    static var previews: some View {
        MakeGroupModalView()
            .environmentObject(GroupStore())
    }
}