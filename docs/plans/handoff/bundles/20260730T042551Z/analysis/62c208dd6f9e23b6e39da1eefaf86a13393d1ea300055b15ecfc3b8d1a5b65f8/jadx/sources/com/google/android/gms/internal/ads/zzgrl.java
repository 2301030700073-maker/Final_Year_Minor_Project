package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgrl extends zzgxr implements zzgzd {
    private static final zzgrl zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;

    static {
        zzgrl zzgrlVar = new zzgrl();
        zza = zzgrlVar;
        zzgxr.zzbZ(zzgrl.class, zzgrlVar);
    }

    private zzgrl() {
    }

    public static zzgrj zzc() {
        return (zzgrj) zza.zzaZ();
    }

    public static zzgrl zzf(zzgwj zzgwjVar, zzgxb zzgxbVar) {
        return (zzgrl) zzgxr.zzbr(zza, zzgwjVar, zzgxbVar);
    }

    public final int zza() {
        return this.zzc;
    }

    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\u000b\u0003\u000b", new Object[]{"zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzgrl();
        }
        zzgrk zzgrkVar = null;
        if (ordinal == 4) {
            return new zzgrj(zzgrkVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgrl.class) {
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
