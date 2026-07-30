package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzenp implements zzetr {
    private final zzgcs zza;
    private final VersionInfoParcel zzb;

    public zzenp(VersionInfoParcel versionInfoParcel, zzgcs zzgcsVar) {
        this.zzb = versionInfoParcel;
        this.zza = zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 54;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeno
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzenp.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzenq zzc() {
        return zzenq.zzc(this.zzb);
    }
}
