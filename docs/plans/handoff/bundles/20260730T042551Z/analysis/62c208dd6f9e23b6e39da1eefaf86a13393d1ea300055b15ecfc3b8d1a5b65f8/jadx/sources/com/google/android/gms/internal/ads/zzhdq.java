package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhdq extends zzgxr implements zzgzd {
    private static final zzhdq zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private int zzg;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzgxz zzf = zzgxr.zzbG();
    private zzgyd zzh = zzgxr.zzbK();
    private zzgwj zzi = zzgwj.zzb;

    static {
        zzhdq zzhdqVar = new zzhdq();
        zza = zzhdqVar;
        zzgxr.zzbZ(zzhdq.class, zzhdqVar);
    }

    private zzhdq() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u0016\u0005င\u0002\u0006\u001b\u0007ည\u0003", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", zzhdo.class, "zzi"});
        }
        if (ordinal == 3) {
            return new zzhdq();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhdp(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhdq.class) {
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
