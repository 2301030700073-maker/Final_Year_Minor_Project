package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@24.7.0 */
/* loaded from: classes3.dex */
public final class zzfmt extends zzhwo implements zzhya {
    private static final zzfmt zzd;
    private static volatile zzhyh zze;
    private long zza;
    private long zzb;
    private zzhxa zzc = zzhwo.zzbM();

    static {
        zzfmt zzfmtVar = new zzfmt();
        zzd = zzfmtVar;
        zzhwo.zzbu(zzfmt.class, zzfmtVar);
    }

    private zzfmt() {
    }

    @Override // com.google.android.gms.internal.ads.zzhwo
    protected final Object zzdh(zzhwn zzhwnVar, Object obj, Object obj2) {
        int ordinal = zzhwnVar.ordinal();
        if (ordinal == 0) {
            return (byte) 1;
        }
        if (ordinal == 2) {
            return zzbv(zzd, "\u0004\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0002\u0002\u0002\u0003Ț", new Object[]{"zza", "zzb", "zzc"});
        }
        if (ordinal == 3) {
            return new zzfmt();
        }
        byte[] bArr = null;
        if (ordinal == 4) {
            return new zzfms(bArr);
        }
        if (ordinal == 5) {
            return zzd;
        }
        if (ordinal != 6) {
            throw null;
        }
        zzhyh zzhyhVar = zze;
        if (zzhyhVar == null) {
            synchronized (zzfmt.class) {
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
