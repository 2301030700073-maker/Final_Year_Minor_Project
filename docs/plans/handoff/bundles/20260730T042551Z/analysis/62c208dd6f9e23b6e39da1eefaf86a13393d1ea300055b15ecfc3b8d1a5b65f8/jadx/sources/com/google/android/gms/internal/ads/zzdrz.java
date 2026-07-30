package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdrz implements zzfgo {
    private final zzdrq zzb;
    private final Clock zzc;
    private final Map zza = new HashMap();
    private final Map zzd = new HashMap();

    public zzdrz(zzdrq zzdrqVar, Set set, Clock clock) {
        zzfgh zzfghVar;
        this.zzb = zzdrqVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzdry zzdryVar = (zzdry) it.next();
            Map map = this.zzd;
            zzfghVar = zzdryVar.zzc;
            map.put(zzfghVar, zzdryVar);
        }
        this.zzc = clock;
    }

    private final void zze(zzfgh zzfghVar, boolean z) {
        zzfgh zzfghVar2;
        String str;
        zzdry zzdryVar = (zzdry) this.zzd.get(zzfghVar);
        if (zzdryVar == null) {
            return;
        }
        String str2 = true != z ? "f." : "s.";
        Map map = this.zza;
        zzfghVar2 = zzdryVar.zzb;
        if (map.containsKey(zzfghVar2)) {
            long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzfghVar2)).longValue();
            Map zzb = this.zzb.zzb();
            str = zzdryVar.zza;
            zzb.put("label.".concat(str), str2 + elapsedRealtime);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgo
    public final void zzd(zzfgh zzfghVar, String str) {
        if (this.zza.containsKey(zzfghVar)) {
            long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzfghVar)).longValue();
            zzdrq zzdrqVar = this.zzb;
            String valueOf = String.valueOf(str);
            zzdrqVar.zzb().put("task.".concat(valueOf), "s.".concat(String.valueOf(Long.toString(elapsedRealtime))));
        }
        if (this.zzd.containsKey(zzfghVar)) {
            zze(zzfghVar, true);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgo
    public final void zzdA(zzfgh zzfghVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzfgo
    public final void zzdB(zzfgh zzfghVar, String str, Throwable th) {
        if (this.zza.containsKey(zzfghVar)) {
            long elapsedRealtime = this.zzc.elapsedRealtime() - ((Long) this.zza.get(zzfghVar)).longValue();
            zzdrq zzdrqVar = this.zzb;
            String valueOf = String.valueOf(str);
            zzdrqVar.zzb().put("task.".concat(valueOf), "f.".concat(String.valueOf(Long.toString(elapsedRealtime))));
        }
        if (this.zzd.containsKey(zzfghVar)) {
            zze(zzfghVar, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfgo
    public final void zzdC(zzfgh zzfghVar, String str) {
        this.zza.put(zzfghVar, Long.valueOf(this.zzc.elapsedRealtime()));
    }
}
