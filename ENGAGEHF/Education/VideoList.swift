//
// This source file is part of the ADOPT-HF project based on the Stanford Spezi Template Application project
//
// SPDX-FileCopyrightText: 2023 Stanford University
//
// SPDX-License-Identifier: MIT
//

import Spezi
import SwiftUI


struct VideoList: View {
    let videoCollections: [VideoCollection]
    
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 12) {
                ForEach(videoCollections.sorted(by: { $0.orderIndex < $1.orderIndex })) { videoCollection in
                    StudyApplicationListCard {
                        VideoListSection(
                            title: videoCollection.title,
                            subtitle: videoCollection.description,
                            videos: videoCollection.videos
                        )
                    }
                        .accessibilityIdentifier("Video Section: \(videoCollection.title)")
                }
            }
                .padding()
        }
            .background(Color(.systemGroupedBackground))
    }
}


#if DEBUG
#Preview {
    VideoList(
        videoCollections: [
            VideoCollection(
                context: VideoCollectionContext(
                    title: "ADOPT-HF Application",
                    description: "Helpful videos on the ADOPT-HF mobile application.",
                    orderIndex: 1
                ),
                videos: [Video(title: "Welcome Video", youtubeId: "gCkpkxcJVAY", orderIndex: 1)]
            )
        ]
    )
        .previewWith(standard: ENGAGEHFStandard()) {
            NavigationManager()
        }
}
#endif
