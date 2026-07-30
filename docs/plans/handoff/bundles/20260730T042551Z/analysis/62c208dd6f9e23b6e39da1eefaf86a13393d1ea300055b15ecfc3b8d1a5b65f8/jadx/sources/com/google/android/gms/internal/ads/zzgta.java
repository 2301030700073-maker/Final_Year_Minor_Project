package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzgta extends zzgxr implements zzgzd {
    private static final zzgta zza;
    private static volatile zzgzk zzb;
    private String zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        zzgta zzgtaVar = new zzgta();
        zza = zzgtaVar;
        zzgxr.zzbZ(zzgta.class, zzgtaVar);
    }

    private zzgta() {
    }

    public static zzgsz zza() {
        return (zzgsz) zza.zzaZ();
    }

    public static /* synthetic */ void zzf(zzgta zzgtaVar, String str) {
        str.getClass();
        zzgtaVar.zzc = str;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002\f\u0003\u000b\u0004\f", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzgta();
        }
        zzgtb zzgtbVar = null;
        if (ordinal == 4) {
            return new zzgsz(zzgtbVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgta.class) {
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
