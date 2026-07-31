package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzbqd implements zzbou, zzbqc {
    private final zzbqc zza;
    private final HashSet zzb = new HashSet();

    public zzbqd(zzbqc zzbqcVar) {
        this.zza = zzbqcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbou, com.google.android.gms.internal.ads.zzbpf
    public final void zza(String str) {
        this.zza.zza(str);
    }

    public final void zzf() {
        HashSet hashSet = this.zzb;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry simpleEntry = (AbstractMap.SimpleEntry) it.next();
            String obj = ((zzblx) simpleEntry.getValue()).toString();
            String.valueOf(obj);
            com.google.android.gms.ads.internal.util.zze.zza("Unregistering eventhandler: ".concat(String.valueOf(obj)));
            this.zza.zzn((String) simpleEntry.getKey(), (zzblx) simpleEntry.getValue());
        }
        hashSet.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zzm(String str, zzblx zzblxVar) {
        this.zza.zzm(str, zzblxVar);
        this.zzb.add(new AbstractMap.SimpleEntry(str, zzblxVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbqc
    public final void zzn(String str, zzblx zzblxVar) {
        this.zza.zzn(str, zzblxVar);
        this.zzb.remove(new AbstractMap.SimpleEntry(str, zzblxVar));
    }
}
