package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzeux implements zzetr {
    private final Executor zza;
    private final String zzb;

    public zzeux(zzbzd zzbzdVar, Executor executor, String str, PackageInfo packageInfo, int i) {
        this.zza = executor;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 41;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return zzgch.zzf(zzgch.zzm(zzgch.zzh(this.zzb), new zzfuc() { // from class: com.google.android.gms.internal.ads.zzeuv
            @Override // com.google.android.gms.internal.ads.zzfuc
            public final Object apply(Object obj) {
                return new zzeuy((String) obj);
            }
        }, this.zza), Throwable.class, new zzgbo() { // from class: com.google.android.gms.internal.ads.zzeuw
            @Override // com.google.android.gms.internal.ads.zzgbo
            public final InterfaceFutureC3942wq zza(Object obj) {
                return zzeux.this.zzc((Throwable) obj);
            }
        }, this.zza);
    }

    public final /* synthetic */ InterfaceFutureC3942wq zzc(Throwable th) {
        return zzgch.zzh(new zzeuy(this.zzb));
    }
}
