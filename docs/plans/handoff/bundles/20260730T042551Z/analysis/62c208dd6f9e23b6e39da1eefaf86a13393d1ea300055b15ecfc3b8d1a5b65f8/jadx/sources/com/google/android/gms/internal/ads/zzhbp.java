package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhbp extends zzgxr implements zzgzd {
    private static final zzhbp zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzhbp zzhbpVar = new zzhbp();
        zza = zzhbpVar;
        zzgxr.zzbZ(zzhbp.class, zzhbpVar);
    }

    private zzhbp() {
    }

    public static zzhbo zzc() {
        return (zzhbo) zza.zzaZ();
    }

    public static /* synthetic */ void zzf(zzhbp zzhbpVar, String str) {
        zzhbpVar.zzc |= 1;
        zzhbpVar.zzd = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzhbp();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhbo(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhbp.class) {
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
