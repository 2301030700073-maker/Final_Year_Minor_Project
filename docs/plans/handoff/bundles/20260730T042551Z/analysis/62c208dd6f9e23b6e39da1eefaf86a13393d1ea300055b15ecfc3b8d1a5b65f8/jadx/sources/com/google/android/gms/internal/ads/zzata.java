package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzata extends zzgxr implements zzgzd {
    private static final zzata zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private long zzd;
    private int zze;
    private boolean zzf;
    private zzgxz zzg = zzgxr.zzbG();
    private long zzh;

    static {
        zzata zzataVar = new zzata();
        zza = zzataVar;
        zzgxr.zzbZ(zzata.class, zzataVar);
    }

    private zzata() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001ဂ\u0000\u0002င\u0001\u0003ဇ\u0002\u0004\u0016\u0005ဃ\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (ordinal == 3) {
            return new zzata();
        }
        zzato zzatoVar = null;
        if (ordinal == 4) {
            return new zzasz(zzatoVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzata.class) {
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
