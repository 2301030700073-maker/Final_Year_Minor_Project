package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzaub extends zzhwo implements zzhya {
    private static final zzaub zzg;
    private static volatile zzhyh zzh;
    private int zza;
    private boolean zzc;
    private boolean zzd;
    private long zzb = 100;
    private long zze = 300;
    private long zzf = 1000;

    static {
        zzaub zzaubVar = new zzaub();
        zzg = zzaubVar;
        zzhwo.zzbu(zzaub.class, zzaubVar);
    }

    private zzaub() {
    }

    public static zzaub zza() {
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzg, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004ဂ\u0003\u0005ဂ\u0004", new Object[]{"zza", "zzb", "zzc", "zzd", "zze", "zzf"});
        }
        if (ordinal == 3) {
            return new zzaub();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzaua(bArr);
        }
        if (ordinal == 5) {
            return zzg;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzh;
        if (zzhyhVar == null) {
            synchronized (zzaub.class) {
                zzhyhVar = zzh;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzg);
                    zzh = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
