package com.google.android.gms.internal.wearable;

/* loaded from: classes3.dex */
public final class zzed extends RuntimeException {
    public zzed(zzdc zzdcVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzcf zza() {
        return new zzcf(getMessage());
    }
}
