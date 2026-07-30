package com.google.android.gms.internal.ads;

import android.content.Context;
import defpackage.InterfaceFutureC3942wq;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzetx implements zzetr {
    private final Context zza;
    private final zzgcs zzb;

    public zzetx(Context context, zzgcs zzgcsVar) {
        this.zza = context;
        this.zzb = zzgcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final int zza() {
        return 59;
    }

    @Override // com.google.android.gms.internal.ads.zzetr
    public final InterfaceFutureC3942wq zzb() {
        return ((Boolean) zzbed.zzb.zze()).booleanValue() ? this.zzb.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzetw
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzetx.this.zzc();
            }
        }) : zzgch.zzh(new zzety(-1, -1));
    }

    public final /* synthetic */ zzety zzc() {
        Context context = this.zza;
        return new zzety(zzbbv.zzb(context), zzbbv.zza(context));
    }
}
