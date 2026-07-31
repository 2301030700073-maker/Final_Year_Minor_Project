package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzdvl implements zzfkt {
    private final zzdvc zzb;
    private final Clock zzc;
    private final Map zza = new HashMap();
    private final Map zzd = new HashMap();

    public zzdvl(zzdvc zzdvcVar, Set set, Clock clock) {
        this.zzb = zzdvcVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdvk zzdvkVar = (zzdvk) it.next();
            this.zzd.put(zzdvkVar.zzc(), zzdvkVar);
        }
        this.zzc = clock;
    }

    private final void zze(zzfkm zzfkmVar, boolean z) {
        zzdvk zzdvkVar = (zzdvk) this.zzd.get(zzfkmVar);
        if (zzdvkVar == null) {
            return;
        }
        String str = true != z ? "f." : "s.";
        Map map = this.zza;
        zzfkm zzb = zzdvkVar.zzb();
        if (map.containsKey(zzb)) {
            long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) map.get(zzb)).longValue();
            zzdvc zzdvcVar = this.zzb;
            String zza = zzdvkVar.zza();
            int length = str.length();
            Map zzc = zzdvcVar.zzc();
            StringBuilder sb = new StringBuilder(length + String.valueOf(elapsedRealtime).length());
            sb.append(str);
            sb.append(elapsedRealtime);
            zzc.put("label.".concat(zza), sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    public final void zzdP(zzfkm zzfkmVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    public final void zzdQ(zzfkm zzfkmVar, String str) {
        this.zza.put(zzfkmVar, Long.valueOf(this.zzc.elapsedRealtime()));
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    public final void zzdR(zzfkm zzfkmVar, String str, Throwable th) {
        Map map = this.zza;
        if (map.containsKey(zzfkmVar)) {
            long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) map.get(zzfkmVar)).longValue();
            Map zzc = this.zzb.zzc();
            String.valueOf(str);
            String valueOf = String.valueOf(str);
            String l = Long.toString(elapsedRealtime);
            String.valueOf(l);
            zzc.put("task.".concat(valueOf), "f.".concat(String.valueOf(l)));
        }
        if (this.zzd.containsKey(zzfkmVar)) {
            zze(zzfkmVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    public final void zzdS(zzfkm zzfkmVar, String str) {
        Map map = this.zza;
        if (map.containsKey(zzfkmVar)) {
            long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) map.get(zzfkmVar)).longValue();
            Map zzc = this.zzb.zzc();
            String.valueOf(str);
            String valueOf = String.valueOf(str);
            String l = Long.toString(elapsedRealtime);
            String.valueOf(l);
            zzc.put("task.".concat(valueOf), "s.".concat(String.valueOf(l)));
        }
        if (this.zzd.containsKey(zzfkmVar)) {
            zze(zzfkmVar, true);
        }
    }
}
