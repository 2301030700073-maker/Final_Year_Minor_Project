package com.google.android.gms.internal.wearable;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzbj {
    static final zzbj zza = new zzbj(true);
    private static volatile boolean zzb = false;
    private static volatile zzbj zzc;
    private final Map zzd;

    public zzbj() {
        this.zzd = new HashMap();
    }

    public static zzbj zza() {
        zzbj zzbjVar = zzc;
        if (zzbjVar == null) {
            synchronized (zzbj.class) {
                zzbjVar = zzc;
                if (zzbjVar == null) {
                    zzbjVar = zza;
                    zzc = zzbjVar;
                }
            }
        }
        return zzbjVar;
    }

    public final zzbu zzb(zzdc zzdcVar, int i) {
        return (zzbu) this.zzd.get(new zzbi(zzdcVar, i));
    }

    public zzbj(boolean z) {
        this.zzd = Collections.emptyMap();
    }
}
