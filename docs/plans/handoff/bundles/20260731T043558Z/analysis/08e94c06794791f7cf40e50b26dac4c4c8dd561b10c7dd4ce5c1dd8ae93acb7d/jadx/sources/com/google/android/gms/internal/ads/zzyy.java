package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzyy {
    private final CopyOnWriteArrayList zza = new CopyOnWriteArrayList();

    public final void zza(Handler handler, zzyz zzyzVar) {
        zzb(zzyzVar);
        this.zza.add(new zzyx(handler, zzyzVar));
    }

    public final void zzb(zzyz zzyzVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.zza;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            zzyx zzyxVar = (zzyx) it.next();
            if (zzyxVar.zzc() == zzyzVar) {
                zzyxVar.zza();
                copyOnWriteArrayList.remove(zzyxVar);
            }
        }
    }

    public final void zzc(final int i, final long j, final long j2) {
        Iterator it = this.zza.iterator();
        while (it.hasNext()) {
            final zzyx zzyxVar = (zzyx) it.next();
            if (!zzyxVar.zzd()) {
                zzyxVar.zzb().post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyw
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzyx.this.zzc().zzX(i, j, j2);
                    }
                });
            }
        }
    }
}
