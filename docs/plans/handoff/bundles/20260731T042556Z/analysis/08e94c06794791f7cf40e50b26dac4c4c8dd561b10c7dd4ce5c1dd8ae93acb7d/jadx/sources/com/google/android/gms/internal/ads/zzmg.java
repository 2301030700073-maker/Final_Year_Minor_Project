package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzmg {
    private boolean zza;

    public zzmg(Context context, Looper looper, zzdc zzdcVar) {
        context.getApplicationContext();
        zzdcVar.zzd(looper, null);
    }

    public final void zza(boolean z) {
        if (this.zza == z) {
            return;
        }
        this.zza = z;
    }
}
