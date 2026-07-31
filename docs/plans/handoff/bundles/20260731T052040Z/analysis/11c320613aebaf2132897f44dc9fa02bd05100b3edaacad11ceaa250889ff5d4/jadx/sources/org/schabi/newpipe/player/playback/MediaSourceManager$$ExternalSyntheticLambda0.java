package org.schabi.newpipe.player.playback;

import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import org.schabi.newpipe.player.Player;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public final /* synthetic */ class MediaSourceManager$$ExternalSyntheticLambda0 implements Predicate, Consumer {
    public final /* synthetic */ MediaSourceManager f$0;

    public /* synthetic */ MediaSourceManager$$ExternalSyntheticLambda0(MediaSourceManager mediaSourceManager) {
        this.f$0 = mediaSourceManager;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        this.f$0.loadImmediate();
    }

    @Override // io.reactivex.rxjava3.functions.Predicate
    public boolean test(Object obj) {
        MediaSourceManager mediaSourceManager = this.f$0;
        Player player = mediaSourceManager.playbackListener;
        long j = mediaSourceManager.playbackNearEndGapMillis;
        if (player.exoPlayerIsNull() || player.isLive$1() || !player.isPlaying()) {
            return false;
        }
        return player.simpleExoPlayer.getDuration() - player.simpleExoPlayer.getCurrentPosition() < j;
    }
}
