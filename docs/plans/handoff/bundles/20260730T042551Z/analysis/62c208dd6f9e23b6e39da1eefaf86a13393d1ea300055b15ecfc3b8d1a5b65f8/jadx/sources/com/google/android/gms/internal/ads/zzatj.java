package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzatj extends zzgxr implements zzgzd {
    private static final zzatj zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private long zzd;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzgwj zzf = zzgwj.zzb;

    static {
        zzatj zzatjVar = new zzatj();
        zza = zzatjVar;
        zzgxr.zzbZ(zzatj.class, zzatjVar);
    }

    private zzatj() {
    }

    public static zzatj zzc() {
        return zza;
    }

    public final long zza() {
        return this.zzd;
    }

    public final zzgwj zzd() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0004\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0003ဈ\u0001\u0004ည\u0002", new Object[]{"zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzatj();
        }
        zzato zzatoVar = null;
        if (ordinal == 4) {
            return new zzati(zzatoVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzatj.class) {
                zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    zzgzkVar = new zzgxm(zza);
                    zzb = zzgzkVar;
                }
            }
        }
        return zzgzkVar;
    }

    public final String zzf() {
        return this.zze;
    }

    public final boolean zzg() {
        return (this.zzc & 1) != 0;
    }
}
