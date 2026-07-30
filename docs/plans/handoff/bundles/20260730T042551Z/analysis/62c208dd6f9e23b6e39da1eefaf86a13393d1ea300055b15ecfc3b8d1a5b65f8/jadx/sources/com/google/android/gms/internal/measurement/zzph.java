package com.google.android.gms.internal.measurement;

import defpackage.SF;
import defpackage.VF;

/* loaded from: classes.dex */
public final class zzph implements SF<zzpg> {
    private static zzph zza = new zzph();
    private final SF<zzpg> zzb = new VF(new zzpj());

    public static double zza() {
        return ((zzpg) zza.get()).zza();
    }

    public static long zzb() {
        return ((zzpg) zza.get()).zzb();
    }

    public static long zzc() {
        return ((zzpg) zza.get()).zzc();
    }

    public static long zzd() {
        return ((zzpg) zza.get()).zzd();
    }

    public static String zze() {
        return ((zzpg) zza.get()).zze();
    }

    public static boolean zzf() {
        return ((zzpg) zza.get()).zzf();
    }

    @Override // defpackage.SF
    public final /* synthetic */ zzpg get() {
        return this.zzb.get();
    }
}
