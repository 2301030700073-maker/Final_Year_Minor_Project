package org.schabi.newpipe.fragments.detail;

import androidx.sqlite.SQLite;
import java.util.LinkedList;
import org.schabi.newpipe.player.playqueue.PlayQueue;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class VideoDetailFragment$$ExternalSyntheticLambda44 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ VideoDetailFragment f$0;
    public final /* synthetic */ PlayQueue f$1;

    public /* synthetic */ VideoDetailFragment$$ExternalSyntheticLambda44(VideoDetailFragment videoDetailFragment, PlayQueue playQueue, int i) {
        this.$r8$classId = i;
        this.f$0 = videoDetailFragment;
        this.f$1 = playQueue;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        PlayQueue playQueue = this.f$1;
        VideoDetailFragment videoDetailFragment = this.f$0;
        switch (i) {
            case 0:
                LinkedList linkedList = VideoDetailFragment.stack;
                SQLite.playOnPopupPlayer(videoDetailFragment.activity, playQueue, true);
                break;
            default:
                LinkedList linkedList2 = VideoDetailFragment.stack;
                SQLite.playOnBackgroundPlayer(videoDetailFragment.activity, playQueue, true);
                break;
        }
    }
}
