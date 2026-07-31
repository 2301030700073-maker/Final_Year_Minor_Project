package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzauk extends zzhwo implements zzhya {
    private static final zzauk zze;
    private static volatile zzhyh zzf;
    private int zza;
    private long zzb = -1;
    private int zzc = 1000;
    private int zzd = 1000;

    static {
        zzauk zzaukVar = new zzauk();
        zze = zzaukVar;
        zzhwo.zzbu(zzauk.class, zzaukVar);
    }

    private zzauk() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            zzhwu zzhwuVar = zzavh.zza;
            return zzbv(zze, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zza", "zzb", "zzc", zzhwuVar, "zzd", zzhwuVar});
        }
        if (ordinal == 3) {
            return new zzauk();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzauj(bArr);
        }
        if (ordinal == 5) {
            return zze;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zzf;
        if (zzhyhVar == null) {
            synchronized (zzauk.class) {
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
