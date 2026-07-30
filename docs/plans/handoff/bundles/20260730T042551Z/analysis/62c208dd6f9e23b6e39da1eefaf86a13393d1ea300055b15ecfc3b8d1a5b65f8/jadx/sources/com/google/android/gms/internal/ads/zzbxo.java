package com.google.android.gms.internal.ads;

import defpackage.InterfaceFutureC3942wq;
import java.util.List;

/* loaded from: classes.dex */
final class zzbxo implements zzgcd {
    final /* synthetic */ InterfaceFutureC3942wq zza;

    public zzbxo(zzbxp zzbxpVar, InterfaceFutureC3942wq interfaceFutureC3942wq) {
        this.zza = interfaceFutureC3942wq;
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final void zza(Throwable th) {
        List list;
        list = zzbxp.zzc;
        list.remove(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgcd
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        List list;
        list = zzbxp.zzc;
        list.remove(this.zza);
    }
}
