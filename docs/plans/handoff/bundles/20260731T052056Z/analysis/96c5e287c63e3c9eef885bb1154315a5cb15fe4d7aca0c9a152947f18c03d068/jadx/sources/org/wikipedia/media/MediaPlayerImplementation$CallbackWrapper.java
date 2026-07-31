package org.wikipedia.media;

import android.media.MediaPlayer;
import org.wikipedia.media.AvPlayer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MediaPlayerImplementation$CallbackWrapper implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener {
    public final AvPlayer.Callback callback;

    public MediaPlayerImplementation$CallbackWrapper(AvPlayer.Callback callback) {
        callback.getClass();
        this.callback = callback;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        mediaPlayer.getClass();
        this.callback.onSuccess();
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        mediaPlayer.getClass();
        this.callback.onError(i, i2);
        return true;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        mediaPlayer.getClass();
        this.callback.onSuccess();
    }
}
