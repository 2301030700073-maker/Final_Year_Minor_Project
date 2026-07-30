package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zziek extends zzhwo implements zzhya {
    private static final zziek zze;
    private static volatile zzhyh zzf;
    private int zza;
    private String zzb = "";
    private int zzc;
    private int zzd;

    static {
        zziek zziekVar = new zziek();
        zze = zziekVar;
        zzhwo.zzbu(zziek.class, zziekVar);
    }

    private zziek() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zze, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003င\u0002", new Object[]{"zza", "zzb", "zzc", zzien.zza, "zzd"});
        }
        if (ordinal == 3) {
            return new zziek();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zziej(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zziek.class) {
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
