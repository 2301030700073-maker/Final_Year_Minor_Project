package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzarp extends zzgxr implements zzgzd {
    private static final zzarp zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private zzarr zzd;
    private zzaru zze;

    static {
        zzarp zzarpVar = new zzarp();
        zza = zzarpVar;
        zzgxr.zzbZ(zzarp.class, zzarpVar);
    }

    private zzarp() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001", new Object[]{"zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzarp();
        }
        zzarv zzarvVar = null;
        if (ordinal == 4) {
            return new zzaro(zzarvVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzarp.class) {
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
