package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhba extends zzgxr implements zzgzd {
    private static final zzhba zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private long zzd;
    private long zze;

    static {
        zzhba zzhbaVar = new zzhba();
        zza = zzhbaVar;
        zzgxr.zzbZ(zzhba.class, zzhbaVar);
    }

    private zzhba() {
    }

    public static zzhaz zzc() {
        return (zzhaz) zza.zzaZ();
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u0002\u0003\u0002", new Object[]{"zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzhba();
        }
        zzhbd zzhbdVar = null;
        if (ordinal == 4) {
            return new zzhaz(zzhbdVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhba.class) {
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
