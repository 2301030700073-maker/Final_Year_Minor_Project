package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhdw extends zzgxr implements zzgzd {
    private static final zzhdw zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private boolean zzj;
    private double zzk;
    private int zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzp;
    private boolean zzu;
    private String zzd = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private int zzf = 4;
    private zzgyd zzg = zzgxr.zzbK();
    private String zzh = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private String zzi = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzgyd zzl = zzgxr.zzbK();

    static {
        zzhdw zzhdwVar = new zzhdw();
        zza = zzhdwVar;
        zzgxr.zzbZ(zzhdw.class, zzhdwVar);
    }

    private zzhdw() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0002\u0003\u001a\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဇ\u0005\u0007က\u0006\b\u001b\tဈ\u0001\n᠌\u0007\u000bဇ\b\fဇ\t\rဇ\n\u000eဇ\u000b", new Object[]{"zzc", "zzd", "zzf", zzhdv.zza, "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", zzhdu.class, "zze", "zzm", zzhds.zza, "zzn", "zzo", "zzp", "zzu"});
        }
        if (ordinal == 3) {
            return new zzhdw();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhdr(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhdw.class) {
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
