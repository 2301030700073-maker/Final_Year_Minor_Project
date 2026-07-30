package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzaww implements Callable {
    private final zzawd zza;
    private final zzasc zzb;

    public zzaww(zzawd zzawdVar, zzasc zzascVar) {
        this.zza = zzawdVar;
        this.zzb = zzascVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        if (this.zza.zzl() != null) {
            this.zza.zzl().get();
        }
        zzasy zzc = this.zza.zzc();
        if (zzc == null) {
            return null;
        }
        try {
            synchronized (this.zzb) {
                this.zzb.zzaY(zzc.zzaV(), zzgxb.zza());
            }
            return null;
        } catch (zzgyg | NullPointerException unused) {
            return null;
        }
    }
}
