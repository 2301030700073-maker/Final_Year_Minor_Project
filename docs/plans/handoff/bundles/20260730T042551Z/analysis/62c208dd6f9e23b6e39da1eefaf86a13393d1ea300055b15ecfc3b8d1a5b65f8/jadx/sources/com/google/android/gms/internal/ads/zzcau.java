package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcau implements Runnable {
    final /* synthetic */ zzcaw zza;

    public zzcau(zzcaw zzcawVar) {
        this.zza = zzcawVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcax zzcaxVar;
        boolean z;
        zzcax zzcaxVar2;
        zzcax zzcaxVar3;
        zzcaw zzcawVar = this.zza;
        zzcaxVar = zzcawVar.zzq;
        if (zzcaxVar != null) {
            z = zzcawVar.zzr;
            if (!z) {
                zzcaxVar3 = zzcawVar.zzq;
                zzcaxVar3.zzg();
                this.zza.zzr = true;
            }
            zzcaxVar2 = this.zza.zzq;
            zzcaxVar2.zze();
        }
    }
}
