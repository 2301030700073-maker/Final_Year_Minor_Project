package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgsh extends zzgxr implements zzgzd {
    private static final zzgsh zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;

    static {
        zzgsh zzgshVar = new zzgsh();
        zza = zzgshVar;
        zzgxr.zzbZ(zzgsh.class, zzgshVar);
    }

    private zzgsh() {
    }

    public static zzgsf zzc() {
        return (zzgsf) zza.zzaZ();
    }

    public static zzgsh zzf() {
        return zza;
    }

    public final int zza() {
        return this.zzd;
    }

    public final zzgry zzb() {
        int i = this.zzc;
        zzgry zzgryVar = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? null : zzgry.SHA224 : zzgry.SHA512 : zzgry.SHA256 : zzgry.SHA384 : zzgry.SHA1 : zzgry.UNKNOWN_HASH;
        return zzgryVar == null ? zzgry.UNRECOGNIZED : zzgryVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002\u000b", new Object[]{"zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzgsh();
        }
        zzgsg zzgsgVar = null;
        if (ordinal == 4) {
            return new zzgsf(zzgsgVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgsh.class) {
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
