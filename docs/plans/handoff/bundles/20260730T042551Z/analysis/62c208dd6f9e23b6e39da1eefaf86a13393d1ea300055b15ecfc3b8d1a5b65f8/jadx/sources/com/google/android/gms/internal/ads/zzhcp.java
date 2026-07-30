package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhcp extends zzgxr implements zzgzd {
    private static final zzhcp zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private long zzf;
    private long zzg;

    static {
        zzhcp zzhcpVar = new zzhcp();
        zza = zzhcpVar;
        zzgxr.zzbZ(zzhcp.class, zzhcpVar);
    }

    private zzhcp() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003ဂ\u0002\u0004ဂ\u0003", new Object[]{"zzc", "zzd", zzhco.zza, "zze", "zzf", "zzg"});
        }
        if (ordinal == 3) {
            return new zzhcp();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhcn(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhcp.class) {
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
