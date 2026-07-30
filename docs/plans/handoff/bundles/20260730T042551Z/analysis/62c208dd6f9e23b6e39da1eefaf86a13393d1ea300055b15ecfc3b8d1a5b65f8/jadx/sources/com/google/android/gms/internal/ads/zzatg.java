package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzatg extends zzgxr implements zzgzd {
    private static final zzatg zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private long zzf;
    private long zzh;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzg = "D";

    static {
        zzatg zzatgVar = new zzatg();
        zza = zzatgVar;
        zzgxr.zzbZ(zzatg.class, zzatgVar);
    }

    private zzatg() {
    }

    public static zzatf zza() {
        return (zzatf) zza.zzaZ();
    }

    public static /* synthetic */ void zzc(zzatg zzatgVar, String str) {
        zzatgVar.zzc |= 1;
        zzatgVar.zzd = "1.671910402";
    }

    public static /* synthetic */ void zzd(zzatg zzatgVar, String str) {
        str.getClass();
        zzatgVar.zzc |= 2;
        zzatgVar.zze = str;
    }

    public static /* synthetic */ void zzf(zzatg zzatgVar, String str) {
        str.getClass();
        zzatgVar.zzc |= 8;
        zzatgVar.zzg = str;
    }

    public static /* synthetic */ void zzg(zzatg zzatgVar, long j) {
        zzatgVar.zzc |= 4;
        zzatgVar.zzf = j;
    }

    public static /* synthetic */ void zzh(zzatg zzatgVar, long j) {
        zzatgVar.zzc |= 16;
        zzatgVar.zzh = j;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ဈ\u0003\u0005ဂ\u0004", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (ordinal == 3) {
            return new zzatg();
        }
        zzato zzatoVar = null;
        if (ordinal == 4) {
            return new zzatf(zzatoVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzatg.class) {
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
