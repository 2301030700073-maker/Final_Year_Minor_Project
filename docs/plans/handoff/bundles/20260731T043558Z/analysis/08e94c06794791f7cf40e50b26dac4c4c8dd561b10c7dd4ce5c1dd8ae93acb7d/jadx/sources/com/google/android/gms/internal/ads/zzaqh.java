package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
final class zzaqh implements zzapt {
    private final Map zza = new HashMap();
    private final zzapg zzb;
    private final BlockingQueue zzc;
    private final zzapl zzd;

    zzaqh(zzapg zzapgVar, BlockingQueue blockingQueue, zzapl zzaplVar) {
        this.zzd = zzaplVar;
        this.zzb = zzapgVar;
        this.zzc = blockingQueue;
    }

    @Override // com.google.android.gms.internal.ads.zzapt
    public final void zza(zzapu zzapuVar, zzaqa zzaqaVar) {
        List list;
        zzapd zzapdVar = zzaqaVar.zzb;
        if (zzapdVar == null || zzapdVar.zza(System.currentTimeMillis())) {
            zzb(zzapuVar);
            return;
        }
        String zzi = zzapuVar.zzi();
        synchronized (this) {
            list = (List) this.zza.remove(zzi);
        }
        if (list != null) {
            if (zzaqg.zzb) {
                zzaqg.zza("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(list.size()), zzi);
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                this.zzd.zza((zzapu) it.next(), zzaqaVar, null);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapt
    public final synchronized void zzb(zzapu zzapuVar) {
        Map map = this.zza;
        String zzi = zzapuVar.zzi();
        List list = (List) map.remove(zzi);
        if (list == null || list.isEmpty()) {
            return;
        }
        if (zzaqg.zzb) {
            zzaqg.zza("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(list.size()), zzi);
        }
        zzapu zzapuVar2 = (zzapu) list.remove(0);
        map.put(zzi, list);
        zzapuVar2.zzu(this);
        try {
            this.zzc.put(zzapuVar2);
        } catch (InterruptedException e) {
            zzaqg.zzc("Couldn't add request to queue. %s", e.toString());
            Thread.currentThread().interrupt();
            this.zzb.zza();
        }
    }

    final synchronized boolean zzc(zzapu zzapuVar) {
        Map map = this.zza;
        String zzi = zzapuVar.zzi();
        if (!map.containsKey(zzi)) {
            map.put(zzi, null);
            zzapuVar.zzu(this);
            if (zzaqg.zzb) {
                zzaqg.zzb("new request, sending to network %s", zzi);
            }
            return false;
        }
        List list = (List) map.get(zzi);
        if (list == null) {
            list = new ArrayList();
        }
        zzapuVar.zzc("waiting-for-response");
        list.add(zzapuVar);
        map.put(zzi, list);
        if (zzaqg.zzb) {
            zzaqg.zzb("Request for cacheKey=%s is in flight, putting on hold.", zzi);
        }
        return true;
    }
}
