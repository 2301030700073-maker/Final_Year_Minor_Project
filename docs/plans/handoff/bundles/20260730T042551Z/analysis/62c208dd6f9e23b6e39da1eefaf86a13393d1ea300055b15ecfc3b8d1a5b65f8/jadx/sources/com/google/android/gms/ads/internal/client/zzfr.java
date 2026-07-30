package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;

/* loaded from: classes.dex */
public final class zzfr extends zzdn {

    /* renamed from: do, reason: not valid java name */
    public final OnAdMetadataChangedListener f9670do;

    public zzfr(OnAdMetadataChangedListener onAdMetadataChangedListener) {
        this.f9670do = onAdMetadataChangedListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdo
    public final void zze() {
        OnAdMetadataChangedListener onAdMetadataChangedListener = this.f9670do;
        if (onAdMetadataChangedListener != null) {
            onAdMetadataChangedListener.onAdMetadataChanged();
        }
    }
}
