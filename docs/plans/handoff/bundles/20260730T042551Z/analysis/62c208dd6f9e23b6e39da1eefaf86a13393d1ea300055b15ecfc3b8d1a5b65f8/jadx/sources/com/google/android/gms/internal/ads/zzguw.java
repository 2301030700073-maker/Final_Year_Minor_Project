package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzguw {
    public static final zzguw zza = new zzguw(new zzgux());
    public static final zzguw zzb = new zzguw(new zzgvb());
    private final zzguu zzc;

    static {
        new zzguw(new zzgvd());
        new zzguw(new zzgvc());
        new zzguw(new zzguy());
        new zzguw(new zzgva());
        new zzguw(new zzguz());
    }

    public zzguw(zzgve zzgveVar) {
        this.zzc = !zzgkt.zzb() ? "The Android Project".equals(System.getProperty("java.vendor")) ? new zzgur(zzgveVar, null) : new zzgus(zzgveVar, null) : new zzgut(zzgveVar, null);
    }

    public static List zzb(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        return arrayList;
    }

    public final Object zza(String str) {
        return this.zzc.zza(str);
    }
}
