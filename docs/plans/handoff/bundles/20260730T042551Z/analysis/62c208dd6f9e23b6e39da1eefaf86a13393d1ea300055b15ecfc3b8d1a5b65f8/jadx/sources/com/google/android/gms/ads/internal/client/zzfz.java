package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.VideoController;

/* loaded from: classes.dex */
public final class zzfz extends zzed {

    /* renamed from: do, reason: not valid java name */
    public final VideoController.VideoLifecycleCallbacks f9672do;

    public zzfz(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.f9672do = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zze() {
        this.f9672do.onVideoEnd();
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zzf(boolean z) {
        this.f9672do.onVideoMute(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zzg() {
        this.f9672do.onVideoPause();
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zzh() {
        this.f9672do.onVideoPlay();
    }

    @Override // com.google.android.gms.ads.internal.client.zzee
    public final void zzi() {
        this.f9672do.onVideoStart();
    }
}
