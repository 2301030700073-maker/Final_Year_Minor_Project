package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzcu {
    private static final ThreadLocal<Boolean> zza = new zzct();

    public static SharedPreferences zza(Context context, String str, int i, zzcm zzcmVar) {
        zzcp zzcpVar = zzcf.zza().zza(str, zzcmVar, zzcj.SHARED_PREFS_TYPE).equals(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED) ? new zzcp() : null;
        if (zzcpVar != null) {
            return zzcpVar;
        }
        ThreadLocal<Boolean> threadLocal = zza;
        if (!threadLocal.get().booleanValue()) {
            throw new IllegalArgumentException();
        }
        threadLocal.set(Boolean.FALSE);
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            threadLocal.set(Boolean.TRUE);
            return sharedPreferences;
        } catch (Throwable th) {
            zza.set(Boolean.TRUE);
            throw th;
        }
    }
}
