package com.google.android.gms.internal.ads;

@Deprecated
/* loaded from: classes.dex */
public final class zzhcm extends zzgxr implements zzgzd {
    private static final zzhcm zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private zzhcl zze;
    private zzhcl zzf;

    static {
        zzhcm zzhcmVar = new zzhcm();
        zza = zzhcmVar;
        zzgxr.zzbZ(zzhcm.class, zzhcmVar);
    }

    private zzhcm() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zzc", "zzd", zzhcj.zza, "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzhcm();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhci(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhcm.class) {
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
