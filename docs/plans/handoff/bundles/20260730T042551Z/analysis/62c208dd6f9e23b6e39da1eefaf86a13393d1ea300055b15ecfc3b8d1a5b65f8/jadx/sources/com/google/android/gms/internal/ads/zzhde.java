package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhde extends zzgxr implements zzgzd {
    private static final zzhde zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private long zze;
    private boolean zzf;
    private int zzg;
    private boolean zzj;
    private boolean zzk;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzi = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;

    static {
        zzhde zzhdeVar = new zzhde();
        zza = zzhdeVar;
        zzgxr.zzbZ(zzhde.class, zzhdeVar);
    }

    private zzhde() {
    }

    public static zzhdd zzc() {
        return (zzhdd) zza.zzaZ();
    }

    public static /* synthetic */ void zzf(zzhde zzhdeVar, String str) {
        zzhdeVar.zzc |= 1;
        zzhdeVar.zzd = str;
    }

    public static /* synthetic */ void zzg(zzhde zzhdeVar, long j) {
        zzhdeVar.zzc |= 2;
        zzhdeVar.zze = j;
    }

    public static /* synthetic */ void zzh(zzhde zzhdeVar, boolean z) {
        zzhdeVar.zzc |= 4;
        zzhdeVar.zzf = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\bဇ\u0007", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", zzhdf.zza, "zzh", "zzi", "zzj", "zzk"});
        }
        if (ordinal == 3) {
            return new zzhde();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhdd(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhde.class) {
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
