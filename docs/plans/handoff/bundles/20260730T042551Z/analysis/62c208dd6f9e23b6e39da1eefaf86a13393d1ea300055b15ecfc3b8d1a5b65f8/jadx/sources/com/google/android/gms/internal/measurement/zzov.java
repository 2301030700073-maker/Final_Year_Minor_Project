package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzov implements SF<zzou> {
    private static zzov zza = new zzov();
    private final SF<zzou> zzb = new VF(new zzox());

    public static boolean zza() {
        return ((zzou) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zzou) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zzou) zza.get()).zzc();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzou get() {
        return this.zzb.get();
    }
}
