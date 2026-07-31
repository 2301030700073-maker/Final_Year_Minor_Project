package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzei implements zzdc {
    protected zzei() {
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final long zza() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final long zzb() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final long zzc() {
        return System.nanoTime();
    }

    @Override // com.google.android.gms.internal.ads.zzdc
    public final zzdm zzd(Looper looper, Handler.Callback callback) {
        return new zzek(new Handler(looper, callback));
    }
}
