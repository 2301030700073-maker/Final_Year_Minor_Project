package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzhcl extends zzgxr implements zzgzd {
    private static final zzhcl zza;
    private static volatile zzgzk zzb;
    private int zzc;
    private int zzd;
    private boolean zze;
    private int zzf;

    static {
        zzhcl zzhclVar = new zzhcl();
        zza = zzhclVar;
        zzgxr.zzbZ(zzhcl.class, zzhclVar);
    }

    private zzhcl() {
    }

    @Override // com.google.android.gms.internal.ads.zzgxr
    public final Object zzdc(zzgxq zzgxqVar, Object obj, Object obj2) {
        int ordinal = zzgxqVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            zzgxx zzgxxVar = zzhcj.zza;
            return zzgxr.zzbQ(zza, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002", new Object[]{"zzc", "zzd", zzgxxVar, "zze", "zzf", zzgxxVar});
        }
        if (ordinal == 3) {
            return new zzhcl();
        }
        zzhdx zzhdxVar = null;
        if (ordinal == 4) {
            return new zzhck(zzhdxVar);
        }
        if (ordinal == 5) {
            return zza;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzgzk zzgzkVar = zzb;
        if (zzgzkVar == null) {
            synchronized (zzhcl.class) {
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
