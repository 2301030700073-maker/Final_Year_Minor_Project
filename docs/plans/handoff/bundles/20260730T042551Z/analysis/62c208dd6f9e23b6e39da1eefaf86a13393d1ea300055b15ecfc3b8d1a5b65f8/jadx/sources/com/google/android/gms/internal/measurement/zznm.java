package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zznm implements SF<zznp> {
    private static zznm zza = new zznm();
    private final SF<zznp> zzb = new VF(new zzno());

    public static boolean zza() {
        return ((zznp) zza.get()).zza();
    }

    public static boolean zzb() {
        return ((zznp) zza.get()).zzb();
    }

    public static boolean zzc() {
        return ((zznp) zza.get()).zzc();
    }

    public static boolean zzd() {
        return ((zznp) zza.get()).zzd();
    }

    public static boolean zze() {
        return ((zznp) zza.get()).zze();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zznp get() {
        return this.zzb.get();
    }
}
