package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfim extends zzgxr implements zzgzd {
    private static final zzfim zza;
    private static volatile zzgzk zzb;
    private boolean zzc;
    private boolean zzd;

    static {
        zzfim zzfimVar = new zzfim();
        zza = zzfimVar;
        zzgxr.zzbZ(zzfim.class, zzfimVar);
    }

    private zzfim() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0002\u0007", new Object[]{"zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzfim();
        }
        zzfil zzfilVar = null;
        if (ordinal == 4) {
            return new zzfik(zzfilVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzfim.class) {
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
