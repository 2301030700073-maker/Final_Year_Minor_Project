package org.schabi.newpipe.player.playback;

import android.content.Context;
import android.view.SurfaceHolder;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.video.PlaceholderSurface;
import org.schabi.newpipe.player.PlayerService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SurfaceHolderCallback implements SurfaceHolder.Callback {
    public final Context context;
    public PlaceholderSurface placeholderSurface;
    public final Player player;

    public SurfaceHolderCallback(PlayerService playerService, Player player) {
        this.context = playerService;
        this.player = player;
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.player.setVideoSurface(surfaceHolder.getSurface());
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (this.placeholderSurface == null) {
            this.placeholderSurface = PlaceholderSurface.newInstanceV17(this.context, false);
        }
        this.player.setVideoSurface(this.placeholderSurface);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }
}
