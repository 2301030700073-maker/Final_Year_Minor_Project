package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
final class zzazb implements Runnable {
    final /* synthetic */ zzazc zza;

    public zzazb(zzazc zzazcVar) {
        this.zza = zzazcVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        boolean z2;
        List list;
        obj = this.zza.zzc;
        synchronized (obj) {
            zzazc zzazcVar = this.zza;
            z = zzazcVar.zzd;
            if (z) {
                z2 = zzazcVar.zze;
                if (z2) {
                    zzazcVar.zzd = false;
                    com.google.android.gms.ads.internal.util.client.zzo.zze("App went background");
                    list = this.zza.zzf;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            ((zzazd) it.next()).zza(false);
                        } catch (Exception e) {
                            com.google.android.gms.ads.internal.util.client.zzo.zzh(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
                        }
                    }
                }
            }
            com.google.android.gms.ads.internal.util.client.zzo.zze("App is still foreground");
        }
    }
}
