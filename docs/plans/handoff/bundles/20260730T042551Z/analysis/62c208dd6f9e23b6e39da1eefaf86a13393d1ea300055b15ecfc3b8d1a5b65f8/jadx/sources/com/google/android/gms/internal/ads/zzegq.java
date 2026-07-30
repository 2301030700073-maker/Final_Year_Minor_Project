package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.util.Clock;
import defpackage.InterfaceFutureC3942wq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzegq {
    private final Clock zza;
    private final zzegs zzb;
    private final zzfja zzc;
    private final LinkedHashMap zzd = new LinkedHashMap();
    private final boolean zze = ((Boolean) com.google.android.gms.ads.internal.client.zzbe.zzc().zza(zzbcl.zzgG)).booleanValue();
    private final zzedb zzf;
    private boolean zzg;
    private long zzh;
    private long zzi;

    public zzegq(Clock clock, zzegs zzegsVar, zzedb zzedbVar, zzfja zzfjaVar) {
        this.zza = clock;
        this.zzb = zzegsVar;
        this.zzf = zzedbVar;
        this.zzc = zzfjaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized boolean zzq(zzfbo zzfboVar) {
        zzegp zzegpVar = (zzegp) this.zzd.get(zzfboVar);
        if (zzegpVar == null) {
            return false;
        }
        return zzegpVar.zzc == 8;
    }

    public final synchronized long zza() {
        return this.zzh;
    }

    public final synchronized InterfaceFutureC3942wq zzf(zzfca zzfcaVar, zzfbo zzfboVar, InterfaceFutureC3942wq interfaceFutureC3942wq, zzfiv zzfivVar) {
        zzfbr zzfbrVar = zzfcaVar.zzb.zzb;
        long elapsedRealtime = this.zza.elapsedRealtime();
        String str = zzfboVar.zzw;
        if (str != null) {
            this.zzd.put(zzfboVar, new zzegp(str, zzfboVar.zzaf, 9, 0L, null));
            zzgch.zzr(interfaceFutureC3942wq, new zzego(this, elapsedRealtime, zzfbrVar, zzfboVar, str, zzfivVar, zzfcaVar), zzbzw.zzg);
        }
        return interfaceFutureC3942wq;
    }

    public final synchronized String zzg() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.zzd.entrySet().iterator();
        while (it.hasNext()) {
            zzegp zzegpVar = (zzegp) ((Map.Entry) it.next()).getValue();
            if (zzegpVar.zzc != Integer.MAX_VALUE) {
                arrayList.add(zzegpVar.toString());
            }
        }
        return TextUtils.join("_", arrayList);
    }

    public final synchronized void zzi(zzfbo zzfboVar) {
        this.zzh = this.zza.elapsedRealtime() - this.zzi;
        if (zzfboVar != null) {
            this.zzf.zze(zzfboVar);
        }
        this.zzg = true;
    }

    public final synchronized void zzj() {
        this.zzh = this.zza.elapsedRealtime() - this.zzi;
    }

    public final synchronized void zzk(List list) {
        this.zzi = this.zza.elapsedRealtime();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzfbo zzfboVar = (zzfbo) it.next();
            if (!TextUtils.isEmpty(zzfboVar.zzw)) {
                this.zzd.put(zzfboVar, new zzegp(zzfboVar.zzw, zzfboVar.zzaf, Api.BaseClientBuilder.API_PRIORITY_OTHER, 0L, null));
            }
        }
    }

    public final synchronized void zzl() {
        this.zzi = this.zza.elapsedRealtime();
    }

    public final synchronized void zzm(zzfbo zzfboVar) {
        zzegp zzegpVar = (zzegp) this.zzd.get(zzfboVar);
        if (zzegpVar == null || this.zzg) {
            return;
        }
        zzegpVar.zzc = 8;
    }
}
