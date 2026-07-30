package com.google.android.gms.ads.internal.util;

import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzben;

/* loaded from: classes.dex */
public final class zze extends zzo {
    public static void zza(String str) {
        if (!zzc() || str == null || str.length() <= 4000) {
            return;
        }
        for (String str2 : zzo.f9743do.zzd(str)) {
        }
    }

    public static void zzb(String str, Throwable th) {
        zzc();
    }

    public static boolean zzc() {
        return zzo.zzm(2) && ((Boolean) zzben.zza.zze()).booleanValue();
    }
}
