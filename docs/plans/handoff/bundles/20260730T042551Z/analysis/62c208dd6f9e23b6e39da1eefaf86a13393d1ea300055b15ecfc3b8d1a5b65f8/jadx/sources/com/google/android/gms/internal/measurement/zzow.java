package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzow implements SF<zzoz> {
    private static zzow zza = new zzow();
    private final SF<zzoz> zzb = new VF(new zzoy());

    public static boolean zza() {
        return ((zzoz) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzoz) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzoz) zza.get()).zzc();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzoz get() {
        return this.zzb.get();
    }
}
