package com.facebook.ads.redexgen.core;

import android.widget.MediaController;

/* loaded from: assets/audience_network.dex */
public class J9 implements MediaController.MediaPlayerControl {
    public final /* synthetic */ TextureViewSurfaceTextureListenerC1762an A00;

    public J9(TextureViewSurfaceTextureListenerC1762an textureViewSurfaceTextureListenerC1762an) {
        this.A00 = textureViewSurfaceTextureListenerC1762an;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canPause() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekBackward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean canSeekForward() {
        return true;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getAudioSessionId() {
        J3 j3;
        J3 j32;
        j3 = this.A00.A0C;
        if (j3 == null) {
            return 0;
        }
        j32 = this.A00.A0C;
        return j32.A04();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getBufferPercentage() {
        J3 j3;
        J3 j32;
        j3 = this.A00.A0C;
        if (j3 == null) {
            return 0;
        }
        j32 = this.A00.A0C;
        return j32.A05();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getCurrentPosition() {
        return this.A00.getCurrentPosition();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final int getDuration() {
        return this.A00.getDuration();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final boolean isPlaying() {
        J3 j3;
        J3 j32;
        j3 = this.A00.A0C;
        if (j3 != null) {
            j32 = this.A00.A0C;
            if (j32.A0J()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        JJ jj;
        JJ jj2;
        jj = this.A00.A0F;
        if (jj == null) {
            return;
        }
        jj2 = this.A00.A0F;
        jj2.AE3();
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void seekTo(int i) {
        this.A00.seekTo(i);
    }

    @Override // android.widget.MediaController.MediaPlayerControl
    public final void start() {
        JJ jj;
        JJ jj2;
        jj = this.A00.A0F;
        if (jj == null) {
            return;
        }
        jj2 = this.A00.A0F;
        jj2.AE4();
    }
}
