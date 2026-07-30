package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzgsl extends zzgxr implements zzgzd {
    private static final zzgsl zza;
    private static volatile zzgzk zzb;
    private String zzc = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzgwj zzd = zzgwj.zzb;
    private int zze;

    static {
        zzgsl zzgslVar = new zzgsl();
        zza = zzgslVar;
        zzgxr.zzbZ(zzgsl.class, zzgslVar);
    }

    private zzgsl() {
    }

    public static zzgsi zza() {
        return (zzgsi) zza.zzaZ();
    }

    public static zzgsl zzd() {
        return zza;
    }

    public static /* synthetic */ void zzi(zzgsl zzgslVar, String str) {
        str.getClass();
        zzgslVar.zzc = str;
    }

    public static /* synthetic */ void zzj(zzgsl zzgslVar, zzgwj zzgwjVar) {
        zzgwjVar.getClass();
        zzgslVar.zzd = zzgwjVar;
    }

    public final zzgsj zzb() {
        int i = this.zze;
        zzgsj zzgsjVar = i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? null : zzgsj.REMOTE : zzgsj.ASYMMETRIC_PUBLIC : zzgsj.ASYMMETRIC_PRIVATE : zzgsj.SYMMETRIC : zzgsj.UNKNOWN_KEYMATERIAL;
        return zzgsjVar == null ? zzgsj.UNRECOGNIZED : zzgsjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zzc", "zzd", "zze"});
        }
        if (ordinal == 3) {
            return new zzgsl();
        }
        zzgsk zzgskVar = null;
        if (ordinal == 4) {
            return new zzgsi(zzgskVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzgsl.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final zzgwj zzf() {
        return this.zzd;
    }

    public final String zzg() {
        return this.zzc;
    }
}
