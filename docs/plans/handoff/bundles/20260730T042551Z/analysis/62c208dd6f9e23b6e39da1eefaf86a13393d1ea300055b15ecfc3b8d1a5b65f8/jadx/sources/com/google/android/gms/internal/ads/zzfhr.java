package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfhr extends zzgxr implements zzgzd {
    private static final zzfhr zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzfho zzd;

    static {
        zzfhr zzfhrVar = new zzfhr();
        zza = zzfhrVar;
        zzgxr.zzbZ(zzfhr.class, zzfhrVar);
    }

    private zzfhr() {
    }

    public static zzfhq zza() {
        return (zzfhq) zza.zzaZ();
    }

    public static /* synthetic */ void zzc(zzfhr zzfhrVar, zzfho zzfhoVar) {
        zzfhoVar.getClass();
        zzfhrVar.zzd = zzfhoVar;
        zzfhrVar.zzc |= 1;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0004\u0001\u0000\u0001\u0006\u0006\u0001\u0000\u0000\u0000\u0006ဉ\u0000", new Object[]{"zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzfhr();
        }
        zzfhs zzfhsVar = null;
        if (ordinal == 4) {
            return new zzfhq(zzfhsVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzfhr.class) {
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
