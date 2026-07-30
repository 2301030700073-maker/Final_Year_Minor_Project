package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.MuteThisAdListener;

/* loaded from: classes.dex */
public final class zzde extends zzdc {

    /* renamed from: do, reason: not valid java name */
    public final MuteThisAdListener f9597do;

    public zzde(MuteThisAdListener muteThisAdListener) {
        this.f9597do = muteThisAdListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdd
    public final void zze() {
        this.f9597do.onAdMuted();
    }
}
