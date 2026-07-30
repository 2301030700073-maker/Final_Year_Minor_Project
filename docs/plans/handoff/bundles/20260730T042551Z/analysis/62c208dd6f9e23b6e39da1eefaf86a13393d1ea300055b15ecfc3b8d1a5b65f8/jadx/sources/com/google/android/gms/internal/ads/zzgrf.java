package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgrf extends zzgxr implements zzgzd {
    private static final zzgrf zza;
    private static volatile zzgzk zzb;
    private int zzc;

    static {
        zzgrf zzgrfVar = new zzgrf();
        zza = zzgrfVar;
        zzgxr.zzbZ(zzgrf.class, zzgrfVar);
    }

    private zzgrf() {
    }

    public static zzgrd zzb() {
        return (zzgrd) zza.zzaZ();
    }

    public static zzgrf zzd() {
        return zza;
    }

    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zzc"});
        }
        if (ordinal == 3) {
            return new zzgrf();
        }
        zzgre zzgreVar = null;
        if (ordinal == 4) {
            return new zzgrd(zzgreVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgrf.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }
}
