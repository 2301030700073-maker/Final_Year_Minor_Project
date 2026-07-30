package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;

/* loaded from: classes.dex */
public final class zzhdc extends zzgxr implements zzgzd {
    private static final zzhdc zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private zzhcd zzf;
    private zzhch zzg;
    private int zzh;
    private int zzk;
    private byte zzm = 2;
    private String zze = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzgxz zzi = zzgxr.zzbG();
    private String zzj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private zzgyd zzl = zzgxr.zzbK();

    static {
        zzhdc zzhdcVar = new zzhdc();
        zza = zzhdcVar;
        zzgxr.zzbZ(zzhdc.class, zzhdcVar);
    }

    private zzhdc() {
    }

    public static zzhdb zzd() {
        return (zzhdb) zza.zzaZ();
    }

    public static /* synthetic */ void zzh(zzhdc zzhdcVar, String str) {
        str.getClass();
        zzgyd zzgydVar = zzhdcVar.zzl;
        if (!zzgydVar.zzc()) {
            zzhdcVar.zzl = zzgxr.zzbL(zzgydVar);
        }
        zzhdcVar.zzl.add(str);
    }

    public static /* synthetic */ void zzi(zzhdc zzhdcVar, int i) {
        zzhdcVar.zzc |= 1;
        zzhdcVar.zzd = i;
    }

    public static /* synthetic */ void zzj(zzhdc zzhdcVar, zzhcd zzhcdVar) {
        zzhcdVar.getClass();
        zzhdcVar.zzf = zzhcdVar;
        zzhdcVar.zzc |= 4;
    }

    public static /* synthetic */ void zzk(zzhdc zzhdcVar, String str) {
        str.getClass();
        zzhdcVar.zzc |= 2;
        zzhdcVar.zze = str;
    }

    public static /* synthetic */ void zzl(zzhdc zzhdcVar, int i) {
        zzhdcVar.zzk = i - 1;
        zzhdcVar.zzc |= 64;
    }

    public final int zzc() {
        return this.zzl.size();
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        zzhdx zzhdxVar = null;
        switch (zzgxqVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return Byte.valueOf(this.zzm);
            case SET_MEMOIZED_IS_INITIALIZED:
                this.zzm = obj == null ? (byte) 0 : (byte) 1;
                return null;
            case BUILD_MESSAGE_INFO:
                return zzgxr.zzbQ(zza, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0002\u0003\u0001ᔄ\u0000\u0002ဈ\u0001\u0003ᐉ\u0002\u0004ᐉ\u0003\u0005င\u0004\u0006\u0016\u0007ဈ\u0005\b᠌\u0006\t\u001a", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", zzhcz.zza, "zzl"});
            case NEW_MUTABLE_INSTANCE:
                return new zzhdc();
            case NEW_BUILDER:
                return new zzhdb(zzhdxVar);
            case GET_DEFAULT_INSTANCE:
                return zza;
            case GET_PARSER:
                zzgzk zzgzkVar = zzb;
                if (zzgzkVar == null) {
                    synchronized (zzhdc.class) {
                        zzgzkVar = zzb;
                        if (zzgzkVar == null) {
                            zzgzkVar = new zzgxm(zza);
                            zzb = zzgzkVar;
                        }
                    }
                }
                return zzgzkVar;
            default:
                throw null;
        }
    }

    public final String zzg() {
        return this.zze;
    }
}
