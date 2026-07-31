package org.schabi.newpipe.player.mediasource;

import android.os.Handler;
import com.android.tools.r8.RecordTag;
import com.google.android.exoplayer2.source.ConcatenatingMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.ShuffleOrder;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda28;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ManagedMediaSourcePlaylist {
    public final ConcatenatingMediaSource internalSource = new ConcatenatingMediaSource(false, new ShuffleOrder.UnshuffledShuffleOrder(0), new MediaSource[0]);

    public final synchronized void append(ManagedMediaSource managedMediaSource) {
        this.internalSource.addMediaSource(managedMediaSource);
    }

    public final ManagedMediaSource get(int i) {
        if (i >= 0) {
            ConcatenatingMediaSource concatenatingMediaSource = this.internalSource;
            if (i < concatenatingMediaSource.getSize()) {
                return (ManagedMediaSource) RecordTag.from(concatenatingMediaSource.getMediaSource(i).getMediaItem()).flatMap(new Player$$ExternalSyntheticLambda28(28)).orElse(null);
            }
        }
        return null;
    }

    public final synchronized void move(int i, int i2) {
        if (i < 0 || i2 < 0) {
            return;
        }
        if (i < this.internalSource.getSize() && i2 < this.internalSource.getSize()) {
            this.internalSource.moveMediaSource(i, i2);
        }
    }

    public final synchronized void update(int i, ManagedMediaSource managedMediaSource, Handler handler, Runnable runnable) {
        if (i >= 0) {
            if (i < this.internalSource.getSize()) {
                this.internalSource.addMediaSource(i + 1, managedMediaSource);
                this.internalSource.removeMediaSource(i, handler, runnable);
            }
        }
    }
}
