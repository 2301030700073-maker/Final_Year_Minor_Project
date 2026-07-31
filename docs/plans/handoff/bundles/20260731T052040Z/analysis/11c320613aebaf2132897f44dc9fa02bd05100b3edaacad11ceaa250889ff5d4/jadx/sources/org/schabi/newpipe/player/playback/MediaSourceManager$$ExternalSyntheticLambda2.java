package org.schabi.newpipe.player.playback;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MediaSourceManager$$ExternalSyntheticLambda2 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MediaSourceManager f$0;

    public /* synthetic */ MediaSourceManager$$ExternalSyntheticLambda2(MediaSourceManager mediaSourceManager, int i) {
        this.$r8$classId = i;
        this.f$0 = mediaSourceManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        MediaSourceManager mediaSourceManager = this.f$0;
        switch (i) {
            case 0:
                mediaSourceManager.loadImmediate();
                break;
            default:
                mediaSourceManager.maybeSynchronizePlayer();
                break;
        }
    }
}
