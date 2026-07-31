package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzauu extends zzhwo implements zzhya {
    private static final zzauu zzd;
    private static volatile zzhyh zze;
    private int zza;
    private long zzb = -1;
    private int zzc = 1000;

    static {
        zzauu zzauuVar = new zzauu();
        zzd = zzauuVar;
        zzhwo.zzbu(zzauu.class, zzauuVar);
    }

    private zzauu() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002᠌\u0001", new Object[]{"zza", "zzb", "zzc", zzavh.zza});
        }
        if (ordinal == 3) {
            return new zzauu();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzaut(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzauu.class) {
                zzhyhVar = zze;
                if (zzhyhVar == null) {
                    zzhyhVar = new zzhwj(zzd);
                    zze = zzhyhVar;
                }
            }
        }
        return zzhyhVar;
    }
}
