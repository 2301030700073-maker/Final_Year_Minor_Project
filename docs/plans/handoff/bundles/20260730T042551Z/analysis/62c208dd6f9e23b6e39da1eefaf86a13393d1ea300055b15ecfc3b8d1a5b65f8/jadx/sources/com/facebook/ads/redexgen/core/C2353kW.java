package com.facebook.ads.redexgen.core;

import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.MediaViewVideoRenderer;

/* renamed from: com.facebook.ads.redexgen.X.kW, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2353kW implements InterfaceC1151Df {
    public final /* synthetic */ MediaViewListener A00;
    public final /* synthetic */ C2352kV A01;

    public C2353kW(C2352kV c2352kV, MediaViewListener mediaViewListener) {
        this.A01 = c2352kV;
        this.A00 = mediaViewListener;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1151Df
    public final void ACg() {
        MediaView mediaView;
        MediaViewListener mediaViewListener = this.A00;
        mediaView = this.A01.A03;
        mediaViewListener.onComplete(mediaView);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1151Df
    public final void AD2() {
        MediaView mediaView;
        MediaViewListener mediaViewListener = this.A00;
        mediaView = this.A01.A03;
        mediaViewListener.onEnterFullscreen(mediaView);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1151Df
    public final void AD8() {
        MediaView mediaView;
        MediaViewListener mediaViewListener = this.A00;
        mediaView = this.A01.A03;
        mediaViewListener.onExitFullscreen(mediaView);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1151Df
    public final void ADG() {
        MediaView mediaView;
        MediaViewListener mediaViewListener = this.A00;
        mediaView = this.A01.A03;
        mediaViewListener.onFullscreenBackground(mediaView);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1151Df
    public final void ADI() {
        MediaView mediaView;
        MediaViewListener mediaViewListener = this.A00;
        mediaView = this.A01.A03;
        mediaViewListener.onFullscreenForeground(mediaView);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1151Df
    public final void AER() {
        MediaView mediaView;
        MediaViewListener mediaViewListener = this.A00;
        mediaView = this.A01.A03;
        mediaViewListener.onPlay(mediaView);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1151Df
    public final void AFm() {
        MediaView mediaView;
        MediaViewVideoRenderer mediaViewVideoRenderer;
        MediaViewListener mediaViewListener = this.A00;
        mediaView = this.A01.A03;
        mediaViewVideoRenderer = this.A01.A05;
        mediaViewListener.onVolumeChange(mediaView, mediaViewVideoRenderer.getVolume());
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1151Df
    public final void onPause() {
        MediaView mediaView;
        MediaViewListener mediaViewListener = this.A00;
        mediaView = this.A01.A03;
        mediaViewListener.onPause(mediaView);
    }
}
