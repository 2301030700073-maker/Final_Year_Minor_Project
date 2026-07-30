package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgqh extends zzgxr implements zzgzd {
    private static final zzgqh zza;
    private static volatile zzgzk zzb;
    private int zzc;

    static {
        zzgqh zzgqhVar = new zzgqh();
        zza = zzgqhVar;
        zzgxr.zzbZ(zzgqh.class, zzgqhVar);
    }

    private zzgqh() {
    }

    public static zzgqf zzb() {
        return (zzgqf) zza.zzaZ();
    }

    public static zzgqh zzd() {
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
            return new zzgqh();
        }
        zzgqg zzgqgVar = null;
        if (ordinal == 4) {
            return new zzgqf(zzgqgVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgqh.class) {
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
