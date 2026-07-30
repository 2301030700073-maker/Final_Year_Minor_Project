package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzgmg {
    private static final zzgmg zza = new zzgmg();
    private final Map zzb = new HashMap();

    public static zzgmg zzb() {
        return zza;
    }

    public final synchronized zzgek zza(String str) {
        if (!this.zzb.containsKey("AES128_GCM")) {
            throw new GeneralSecurityException("Name AES128_GCM does not exist");
        }
        return (zzgek) this.zzb.get("AES128_GCM");
    }

    public final synchronized void zzc(String str, zzgek zzgekVar) {
        if (!this.zzb.containsKey(str)) {
            this.zzb.put(str, zzgekVar);
            return;
        }
        if (((zzgek) this.zzb.get(str)).equals(zzgekVar)) {
            return;
        }
        throw new GeneralSecurityException("Parameters object with name " + str + " already exists (" + String.valueOf(this.zzb.get(str)) + "), cannot insert " + String.valueOf(zzgekVar));
    }

    public final synchronized void zzd(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            zzc((String) entry.getKey(), (zzgek) entry.getValue());
        }
    }
}
