package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzaur implements Runnable {
    final /* synthetic */ zzaus zza;

    public zzaur(zzaus zzausVar) {
        this.zza = zzausVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        zzfni zzfniVar;
        Object obj2;
        obj = this.zza.zzo;
        synchronized (obj) {
            z = this.zza.zzp;
            if (z) {
                return;
            }
            this.zza.zzp = true;
            try {
                zzaus.zzj(this.zza);
            } catch (Exception e) {
                zzfniVar = this.zza.zzh;
                zzfniVar.zzc(2023, -1L, e);
            }
            obj2 = this.zza.zzo;
            synchronized (obj2) {
                this.zza.zzp = false;
            }
        }
    }
}
