//
//  FriendList.swift
//  FriendsFavouriteMovies
//
//  Created by Guyo Godana on 28/09/2026.
//

import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    @State private var newFriend: Friend?
    
    var body: some View {
        NavigationSplitView{
            List{
                ForEach(friends) {friend in
                    NavigationLink(friend.name) {
                        Text("Detail view for \(friend.name)")
                        FriendDetail(friend: friend)
                            
                    }
                }
                .onDelete(perform: deleteFriends(indexes:))
            }
            .navigationTitle("Friends")
            .toolbar{
                ToolbarItem{
                    Button("Add friend", systemImage: "plus", action: addFriend)
                }
                ToolbarItem(placement: .topBarTrailing){
                    EditButton()
                }
                    }
        } detail: {
            Text("Select a friend")
                .navigationTitle("Friend")
                .navigationBarTitleDisplayMode(.inline)
        }
        .sheet(item: $newFriend) {friend in
            NavigationStack{
                FriendDetail(friend: friend, isNew: true)
            }
            .interactiveDismissDisabled()
        }
    }
    
    private func addFriend(){
        let newFriend = Friend(name: "")
        context.insert(newFriend)
        self.newFriend = newFriend
    }
    
    private func deleteFriends(indexes: IndexSet) {
        for index in indexes {
            context.delete(friends[index])
        }
    }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
