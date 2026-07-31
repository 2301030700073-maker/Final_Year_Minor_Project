package org.schabi.newpipe.player.helper;

import com.google.android.exoplayer2.DefaultLoadControl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class LoadController extends DefaultLoadControl {
    public boolean preloadingEnabled;

    @Override // com.google.android.exoplayer2.DefaultLoadControl, com.google.android.exoplayer2.LoadControl
    public final void onPrepared() {
        this.preloadingEnabled = true;
        super.onPrepared();
    }

    @Override // com.google.android.exoplayer2.DefaultLoadControl, com.google.android.exoplayer2.LoadControl
    public final void onReleased() {
        this.preloadingEnabled = true;
        super.onReleased();
    }

    @Override // com.google.android.exoplayer2.DefaultLoadControl, com.google.android.exoplayer2.LoadControl
    public final void onStopped() {
        this.preloadingEnabled = true;
        super.onStopped();
    }

    @Override // com.google.android.exoplayer2.DefaultLoadControl, com.google.android.exoplayer2.LoadControl
    public final boolean shouldContinueLoading(long j, long j2, float f) {
        if (this.preloadingEnabled) {
            return super.shouldContinueLoading(j, j2, f);
        }
        return false;
    }
}
