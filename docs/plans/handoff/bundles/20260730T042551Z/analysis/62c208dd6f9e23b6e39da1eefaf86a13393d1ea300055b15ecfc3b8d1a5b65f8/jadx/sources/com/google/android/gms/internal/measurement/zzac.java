package com.google.android.gms.internal.measurement;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzac {
    private zzad zza;
    private zzad zzb;
    private List<zzad> zzc;

    public zzac() {
        this.zza = new zzad(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0L, null);
        this.zzb = new zzad(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, 0L, null);
        this.zzc = new ArrayList();
    }

    public final /* synthetic */ Object clone() {
        zzac zzacVar = new zzac((zzad) this.zza.clone());
        Iterator<zzad> it = this.zzc.iterator();
        while (it.hasNext()) {
            zzacVar.zzc.add((zzad) it.next().clone());
        }
        return zzacVar;
    }

    public final zzad zza() {
        return this.zza;
    }

    public final zzad zzb() {
        return this.zzb;
    }

    public final List<zzad> zzc() {
        return this.zzc;
    }

    public final void zza(zzad zzadVar) {
        this.zza = zzadVar;
        this.zzb = (zzad) zzadVar.clone();
        this.zzc.clear();
    }

    public final void zzb(zzad zzadVar) {
        this.zzb = zzadVar;
    }

    private zzac(zzad zzadVar) {
        this.zza = zzadVar;
        this.zzb = (zzad) zzadVar.clone();
        this.zzc = new ArrayList();
    }

    public final void zza(String str, long j, Map<String, Object> map) {
        HashMap hashMap = new HashMap();
        for (String str2 : map.keySet()) {
            hashMap.put(str2, zzad.zza(str2, this.zza.zza(str2), map.get(str2)));
        }
        this.zzc.add(new zzad(str, j, hashMap));
    }
}
