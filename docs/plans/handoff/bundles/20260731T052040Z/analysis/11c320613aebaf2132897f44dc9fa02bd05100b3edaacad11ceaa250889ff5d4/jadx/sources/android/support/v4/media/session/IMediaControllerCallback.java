package android.support.v4.media.session;

import android.os.IInterface;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface IMediaControllerCallback extends IInterface {
    void onPlaybackStateChanged(PlaybackStateCompat playbackStateCompat);

    void onRepeatModeChanged(int i);

    void onShuffleModeChanged(int i);
}
