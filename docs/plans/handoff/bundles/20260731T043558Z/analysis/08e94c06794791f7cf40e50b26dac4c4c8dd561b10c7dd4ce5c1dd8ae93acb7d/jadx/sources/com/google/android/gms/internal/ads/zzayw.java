package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzayw implements Callable {
    private final zzayd zza;
    private final zzauc zzb;

    public zzayw(zzayd zzaydVar, zzauc zzaucVar) {
        this.zza = zzaydVar;
        this.zzb = zzaucVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        zzayd zzaydVar = this.zza;
        if (zzaydVar.zzm() != null) {
            zzaydVar.zzm().get();
        }
        zzauz zzl = zzaydVar.zzl();
        if (zzl == null) {
            return null;
        }
        try {
            zzauc zzaucVar = this.zzb;
            synchronized (zzaucVar) {
                zzaucVar.zzaY(zzl.zzaN(), zzhvy.zza());
            }
            return null;
        } catch (zzhxd | NullPointerException unused) {
            return null;
        }
    }
}
