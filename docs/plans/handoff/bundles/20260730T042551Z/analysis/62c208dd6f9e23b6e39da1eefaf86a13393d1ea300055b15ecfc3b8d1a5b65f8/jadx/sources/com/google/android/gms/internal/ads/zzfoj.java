package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzfoj extends zzgxr implements zzgzd {
    private static final zzfoj zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzf = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzfof zzg;

    static {
        zzfoj zzfojVar = new zzfoj();
        zza = zzfojVar;
        zzgxr.zzbZ(zzfoj.class, zzfojVar);
    }

    private zzfoj() {
    }

    public static zzfog zza() {
        return (zzfog) zza.zzaZ();
    }

    public static /* synthetic */ void zzc(zzfoj zzfojVar, String str) {
        str.getClass();
        zzfojVar.zzc |= 2;
        zzfojVar.zze = str;
    }

    public static /* synthetic */ void zzd(zzfoj zzfojVar, zzfof zzfofVar) {
        zzfofVar.getClass();
        zzfojVar.zzg = zzfofVar;
        zzfojVar.zzc |= 8;
    }

    public static /* synthetic */ void zzf(zzfoj zzfojVar, int i) {
        zzfojVar.zzd = 1;
        zzfojVar.zzc = 1 | zzfojVar.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဉ\u0003", new Object[]{"zzc", "zzd", zzfoh.zza, "zze", "zzf", "zzg"});
        }
        if (ordinal == 3) {
            return new zzfoj();
        }
        zzfoi zzfoiVar = null;
        if (ordinal == 4) {
            return new zzfog(zzfoiVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzfoj.class) {
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
