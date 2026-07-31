package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfpx {
    private static final zzfpx zza = new zzfpx();
    private Context zzb;

    private zzfpx() {
    }

    public static zzfpx zza() {
        return zza;
    }

    public final Context zzb() {
        return this.zzb;
    }

    public final void zzc(Context context) {
        this.zzb = context != null ? context.getApplicationContext() : null;
    }
}
