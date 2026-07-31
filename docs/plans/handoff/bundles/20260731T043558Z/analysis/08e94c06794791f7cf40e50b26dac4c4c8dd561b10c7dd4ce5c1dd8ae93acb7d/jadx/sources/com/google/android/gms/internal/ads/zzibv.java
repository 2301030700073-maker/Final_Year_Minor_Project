package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
@Deprecated
/* loaded from: classes3.dex */
public final class zzibv extends zzhwo implements zzhya {
    private static final zzibv zze;
    private static volatile zzhyh zzf;
    private int zza;
    private int zzb;
    private zzibu zzc;
    private zzibu zzd;

    static {
        zzibv zzibvVar = new zzibv();
        zze = zzibvVar;
        zzhwo.zzbu(zzibv.class, zzibvVar);
    }

    private zzibv() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0003ဉ\u0002", new Object[]{"zza", "zzb", zzibs.zza, "zzc", "zzd"});
        }
        if (ordinal == 3) {
            return new zzibv();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzibr(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzibv.class) {
                zzhyhVar = zzf;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zze);
                    zzf = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
