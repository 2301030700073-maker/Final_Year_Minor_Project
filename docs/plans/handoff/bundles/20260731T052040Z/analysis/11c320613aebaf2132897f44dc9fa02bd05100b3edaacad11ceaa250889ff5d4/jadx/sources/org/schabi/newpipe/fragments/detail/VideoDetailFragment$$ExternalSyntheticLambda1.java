package org.schabi.newpipe.fragments.detail;

import java.util.LinkedList;
import org.schabi.newpipe.extractor.stream.StreamInfo;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class VideoDetailFragment$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ VideoDetailFragment f$0;
    public final /* synthetic */ StreamInfo f$1;
    public final /* synthetic */ boolean f$2;

    public /* synthetic */ VideoDetailFragment$$ExternalSyntheticLambda1(VideoDetailFragment videoDetailFragment, StreamInfo streamInfo, boolean z) {
        this.f$0 = videoDetailFragment;
        this.f$1 = streamInfo;
        this.f$2 = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LinkedList linkedList = VideoDetailFragment.stack;
        VideoDetailFragment videoDetailFragment = this.f$0;
        if (videoDetailFragment.activity == null) {
            return;
        }
        StreamInfo streamInfo = this.f$1;
        if (streamInfo.getName().equals(videoDetailFragment.binding.detailVideoTitleView.getText().toString())) {
            return;
        }
        videoDetailFragment.showLoading();
        videoDetailFragment.initTabs();
        if (this.f$2) {
            videoDetailFragment.binding.appBarLayout.setExpanded(true, true, true);
            videoDetailFragment.updateTabLayoutVisibility();
        }
        videoDetailFragment.handleResult(streamInfo);
        videoDetailFragment.binding.detailContentRootHiding.setVisibility(0);
    }
}
