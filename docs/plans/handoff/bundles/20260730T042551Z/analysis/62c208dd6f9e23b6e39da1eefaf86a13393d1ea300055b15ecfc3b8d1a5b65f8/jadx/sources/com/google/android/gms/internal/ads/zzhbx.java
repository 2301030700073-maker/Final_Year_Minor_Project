package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhbx extends zzgxr implements zzgzd {
    private static final zzhbx zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;

    static {
        zzhbx zzhbxVar = new zzhbx();
        zza = zzhbxVar;
        zzgxr.zzbZ(zzhbx.class, zzhbxVar);
    }

    private zzhbx() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzgxr.zzbQ(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003ဇ\u0002\u0004ဂ\u0003", new Object[]{"zzc", "zzd", zzhbw.zza, "zze", zzhbu.zza, "zzf", "zzg"});
        }
        if (ordinal == 3) {
            return new zzhbx();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhbv(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhbx.class) {
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
