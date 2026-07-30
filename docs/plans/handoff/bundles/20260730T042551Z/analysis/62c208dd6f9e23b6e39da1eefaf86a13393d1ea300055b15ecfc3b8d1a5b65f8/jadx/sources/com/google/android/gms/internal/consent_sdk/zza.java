package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.Context;

/* loaded from: classes.dex */
public abstract class zza {
    private static zza zza;

    public static zza zza(Context context) {
        zza zzaVar;
        synchronized (zza.class) {
            if (zza == null) {
                zzag zzagVar = new zzag(null);
                zzagVar.zzb((Application) context.getApplicationContext());
                zza = zzagVar.zza();
            }
            zzaVar = zza;
        }
        return zzaVar;
    }

    public abstract zzj zzb();

    public abstract zzbk zzc();
}
