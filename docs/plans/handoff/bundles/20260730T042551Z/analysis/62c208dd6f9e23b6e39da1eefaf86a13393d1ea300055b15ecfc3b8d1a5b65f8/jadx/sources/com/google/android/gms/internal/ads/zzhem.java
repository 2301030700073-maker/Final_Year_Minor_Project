package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class zzhem {
    final LinkedHashMap zza;

    public zzhem(int i) {
        this.zza = zzheo.zzb(i);
    }

    public final zzhem zza(Object obj, zzhfa zzhfaVar) {
        zzhez.zza(obj, "key");
        zzhez.zza(zzhfaVar, "provider");
        this.zza.put(obj, zzhfaVar);
        return this;
    }
}
