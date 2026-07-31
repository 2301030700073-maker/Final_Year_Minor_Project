package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfwx extends zzfww {
    private static zzfwx zzd;

    private zzfwx(Context context) {
        super(context, "paidv1_id", "paidv1_creation_time", "PaidV1LifecycleImpl");
    }

    public static final zzfwx zzh(Context context) {
        zzfwx zzfwxVar;
        synchronized (zzfwx.class) {
            if (zzd == null) {
                zzd = new zzfwx(context);
            }
            zzfwxVar = zzd;
        }
        return zzfwxVar;
    }

    public final zzfwt zzi(long j, boolean z) throws IOException {
        zzfwt zza;
        synchronized (zzfwx.class) {
            zza = zza(null, null, j, z);
        }
        return zza;
    }

    public final zzfwt zzj(String str, String str2, long j, boolean z) throws IOException {
        zzfwt zza;
        synchronized (zzfwx.class) {
            zza = zza(str, str2, j, z);
        }
        return zza;
    }

    public final void zzk() throws IOException {
        synchronized (zzfwx.class) {
            zzc(false);
        }
    }

    public final void zzl() throws IOException {
        synchronized (zzfwx.class) {
            zzc(true);
        }
    }
}
